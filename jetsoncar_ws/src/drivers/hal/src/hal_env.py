#!/usr/bin/env python

#Open AI Gym Enviroment for the autonomous car

import gym
import rospy
import roslaunch
import time
import numpy as np

from gym import utils, spaces
from gym_gazebo.envs import gazebo_env
from ackermann_msgs.msg import AckermannDriveStamped
from sensor_msgs.msg import Imu, Image

from gym.utils import seeding

from gym.envs.registration import register

reg = register(
    id="HAL-v0",
    entry_point="hal_env:HALenv",
    timestep_limit=5000,

    )

class HALenv(gazebo_env.GazeboEnv):

    def __init__(self):
        # Launch the simulation with the given launchfile name

        self.vel_pub = rospy.Publisher('/racecar/autonomous/ackermann_cmd', AckermannDriveStamped, queue_size=5)
        self.unpause = rospy.ServiceProxy('/gazebo/unpause_physics', Empty)
        self.pause = rospy.ServiceProxy('/gazebo/pause_physics', Empty)
        self.reset_proxy = rospy.ServiceProxy('/gazebo/reset_simulation', Empty)

        self.action_space = spaces.Discrete(3) #Go Strait, Turn Left, Turn Right
        self.reward_range = (-np.inf, np.inf)

        self._seed()

    def discretize_observation(self, camera_data):
        discretized_ranges = []
        min_range = 0.4
        done = False
        mod = len(data.ranges)/new_ranges
        for i, item in enumerate(data.ranges):
            if (i%mod==0):
                if data.ranges[i] == float ('Inf'):
                    discretized_ranges.append(6)
                elif np.isnan(data.ranges[i]):
                    discretized_ranges.append(0)
                else:
                    discretized_ranges.append(int(data.ranges[i]))
            if (min_range > data.ranges[i] > 0):
                done = True
        return discretized_ranges,done

    def _seed(self, seed=None):
        self.np_random, seed = seeding.np_random(seed)
        return [seed]

    def _step(self, action):

        rospy.wait_for_service('/gazebo/unpause_physics')
        try:
            self.unpause()
        except rospy.ServiceException, e:
            print ("/gazebo/unpause_physics service call failed")

        if action == 0: #FORWARD
            vel_cmd = Twist()
            vel_cmd.linear.x = 2
            vel_cmd.angular.z = 0.0
            self.vel_pub.publish(vel_cmd)
        elif action == 1: #LEFT
            vel_cmd = Twist()
            vel_cmd.linear.x = 0.1
            vel_cmd.angular.z = 0.2
            self.vel_pub.publish(vel_cmd)
        elif action == 2: #RIGHT
            vel_cmd = Twist()
            vel_cmd.linear.x = 0.1
            vel_cmd.angular.z = -0.2
            self.vel_pub.publish(vel_cmd)
        elif action == 3: #BACK
            vel_cmd = Twist()
            vel_cmd.linear.x = -0.5
            vel_cmd.angular.z = 0
            self.vel_pub.publish(vel_cmd)

        cameraData = None
        while cameraData is None:
            try:
                #imuData = rospy.wait_for_message('/racecar/imu', Imu, timeout=5)
                cameraData = rospy.wait_for_message('/front_cam/color/image_raw', Image, timeout=5)
            except:
                pass

        rospy.wait_for_service('/gazebo/pause_physics')
        try:
            self.pause()
        except rospy.ServiceException, e:
            print ("/gazebo/pause_physics service call failed")

        state,done = self.discretize_observation(cameraData)

        if not done:
            if action == 0:
                reward = 8
            elif action == 0:
                reward = 1
            else:
                reward = 2
        else:
            reward = -200

        return state, reward, done, {}

    def _reset(self):

        # Resets the state of the environment and returns an initial observation.
        rospy.wait_for_service('/gazebo/reset_simulation')
        try:
            self.reset_proxy()
        except rospy.ServiceException, e:
            print ("/gazebo/reset_simulation service call failed")

        # Unpause simulation to make observation
        rospy.wait_for_service('/gazebo/unpause_physics')
        try:
            self.unpause()
        except rospy.ServiceException, e:
            print ("/gazebo/unpause_physics service call failed")

        #read camera data
        data = None
        while data is None:
            try:
                data = rospy.wait_for_message('/front_cam/color/image_raw', Image, timeout=5)
            except:
                pass

        rospy.wait_for_service('/gazebo/pause_physics')
        try:
            self.pause()
        except rospy.ServiceException, e:
            print ("/gazebo/pause_physics service call failed")

        state = self.discretize_observation(cameraData)

        return state
