//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Tameika Lawrence on 10/2/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation



class Vehicle {
    
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0.0
    var heading: Double = 0.0
    
    init(name: String, weight: Double, maxSpeed: Double) {
        
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    
    func goFast() {
        speed = maxSpeed
    }
    
    
    func halt() {
        speed = 0.0
    }
    
    
    func accelerate() {
        //should not increase the speed beyond max
        
        speed += (0.1 * maxSpeed)
        if speed > maxSpeed{
            speed = maxSpeed
        }
    
    }
    
    
    func decelerate() {
        //should not decrease below 0
        speed -= (0.1 * maxSpeed)
        if speed < 0.0 {
            speed = 0.0
        }
    }
    
    
    func turnRight() {
        if speed == 0.0 {
            heading = 0.0
        } else if heading >= 0.0 && heading <= 270.0 {
            heading += 90.0
            speed = speed / 2.0
        } else if heading <= 360.0 {
            heading = (heading + 90) - 360
            speed = speed / 2.0
        }
        
    }
    
  
    
    func turnLeft() {
        if speed == 0.0 {
            heading = 0
        } else if heading >= 90.0 {
            heading = heading - 90.0
            speed = speed / 2.0
        } else if heading <= 270.0 {
            heading = 360.0 - (90.0 - heading)
            speed = speed / 2.0
        }
    }

}









