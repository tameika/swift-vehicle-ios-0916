//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Tameika Lawrence on 10/3/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation



class Plane: Vehicle {
    
    let maxAltitude: Double
    var altitude: Double = 0.0
    var inFlight: Bool {
        if speed > 0.0 && altitude > 0.0 {
            
            return true
        } else {
        }
        
        return false
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    //aviation methods
    
    func takeoff() {
        if inFlight == false {
            speed = (0.1 * maxSpeed)
            altitude = (0.1 * maxAltitude)
        }
    }
    
  
    func land() {
        speed = 0.0
        altitude = 0.0
    }
    
    
    func climb() {
        if inFlight {
        altitude += (0.1 * maxAltitude)
        decelerate()
        }
    }
    
    
    func dive() {
        
        if altitude > 0.0 && speed > 0.0 {
            altitude = altitude - (0.1 * maxAltitude)
            accelerate()
            
        } else if altitude > 0.0 && speed == 0.0 {
            altitude = altitude - (0.1 * maxAltitude)
            accelerate()
            
        } else if inFlight == false {
            altitude = 0.0
            
        }
    }
    
    
    func bankRight() {
        if inFlight && heading >= 0.0 && heading <= 315.00 {
            heading += 45.0
            speed = speed - (0.1 * speed)
            
        } else if inFlight && heading >= 360 {
            heading = (heading + 45) - 360
            speed = speed - (0.1 * speed)
            
        } else if inFlight == false {
            heading = 0.0
        }
    }
    
    
    
    func bankLeft() {
        if inFlight && heading >= 45 {
            heading = heading - 45.0
            speed = speed - (0.1 * speed)
            
        } else if inFlight && heading < 45 {
            heading = (-heading - 45.0) + 315.00
            // heading = 315 - heading
            speed = speed - (0.1 * speed)
            
        } else if inFlight == false {
            heading = 0.0
        }
    }

}



