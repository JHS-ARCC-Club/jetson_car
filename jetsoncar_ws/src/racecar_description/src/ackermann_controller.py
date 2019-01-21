#!/usr/bin/env python

#For simulation only

import rospy
import math
from std_msgs.msg import Float64
from ackermann_msgs.msg import AckermannDriveStamped
from std_msgs.msg import Empty #for safety system

#start as true in order to wait for control systems connection
#also could indicated and emergency STOP command
deadMan = True #deadmans switch (if true then man is "dead")

def safetyCheck(data): #update last ping time
    global lastSafetyPing
    lastSafetyPing = rospy.get_time()

def set_throttle_steer(data):

    pub_vel_left_rear_wheel = rospy.Publisher('/racecar/left_rear_wheel_velocity_controller/command', Float64, queue_size=1)
    pub_vel_right_rear_wheel = rospy.Publisher('/racecar/right_rear_wheel_velocity_controller/command', Float64, queue_size=1)
    pub_vel_left_front_wheel = rospy.Publisher('/racecar/left_front_wheel_velocity_controller/command', Float64, queue_size=1)
    pub_vel_right_front_wheel = rospy.Publisher('/racecar/right_front_wheel_velocity_controller/command', Float64, queue_size=1)

    pub_pos_left_steering_hinge = rospy.Publisher('/racecar/left_steering_hinge_position_controller/command', Float64, queue_size=1)
    pub_pos_right_steering_hinge = rospy.Publisher('/racecar/right_steering_hinge_position_controller/command', Float64, queue_size=1)

    velocity = data.drive.speed
    steer = data.drive.steering_angle

    global deadMan
    if deadMan:
        throttle = 0 #turn the engine off
        #keep steering functionality open in case autonomous system can avoid obstacles

    #Ackermann calculations
    # |----|
    #   ||
    # |----|
    #
    # Given:
    # steering angle input in radians = ϕc
    # velocity = desired speed in m/s = v
    # acceleration = desired acceleration in m/s^2 = a
    # jerk = desired jerk in m/s^3 = j
    #
    # See https://www.auto.tuwien.ac.at/bib/pdf_TR/TR0183.pdf for calculations and guidance on concepts
    #
    # First we will work out steering angle for the car in simulation
    # The lines perpendicular to the wheels should always intersect at the Instantaneous Center of Curvature (ICC)
    # The wheel base (Wwb) of the car is 0.33m
    # The distance between kingpins (Wkp) is approx 0.2m
    # ϕc = arctan(Wwb/Rc)
    # Wwb/tan(ϕc) = Rc
    # Rc = turn radius = linear velocity / angular velocity
    # ϕL = arctan(Wwb/(Rc-(Wkp/2)))
    # ϕR = arctan(Wwb/(Rc-(Wkp/2)))
    # Substituting we get:
    #   ϕL = arctan(Wwb/(Wwb/tan(ϕc)-(Wkp/2)))
    #   ϕR = arctan(Wwb/(Wwb/tan(ϕc)-(Wkp/2)))


    pub_vel_left_rear_wheel.publish(throttle)
    pub_vel_right_rear_wheel.publish(throttle)
    pub_vel_left_front_wheel.publish(throttle)
    pub_vel_right_front_wheel.publish(throttle)

    pub_pos_left_steering_hinge.publish(steer)
    pub_pos_right_steering_hinge.publish(steer)

def control_commands():
    global lastSafetyPing
    global deadMan

    rospy.init_node("ackermann_controller")

    lastSafetyPing = rospy.get_time() #used for checking frequency of safety pinger
    rospy.Subscriber("/racecar/muxed/ackermann_cmd", AckermannDriveStamped, set_throttle_steer)
    rospy.Subscriber("/racecar/safety", Empty, safetyCheck)

    loopRate = rospy.Rate(50)
    while not rospy.is_shutdown():
        rate = rospy.get_time() - lastSafetyPing
        #check to see if rate is bellow 5Hz
        if((rate > 0.2) and not deadMan): #1/5hz = 0.2
            deadMan = not deadMan #deadMan is dead
            rospy.logerr("Deadmans switch triggered!")
        elif((rate < 0.2) and deadMan): #if man is dead but the publishing rate is now above 5Hz
            deadMan = not deadMan #deadMan is alive
            rospy.loginfo("Deadman switch reset!")
        loopRate.sleep()


if __name__ == '__main__':
    try:
        control_commands()
    except rospy.ROSInterruptException:
        pass
