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
            speed = (1/10 * maxSpeed)
            altitude = (1/10 * maxAltitude)
        }
    }
    
  
    func land() {
        speed = 0.0
        altitude = 0.0
    }
    
    
    func climb() {
        if inFlight {
        altitude += (1/10 * maxAltitude)
        decelerate()
        }
    }
    
    
    func dive() {
        if inFlight {
        altitude -= (1/10 * maxAltitude)
        accelerate()
            
        } else if speed == 0.0 {
            //inFlight = true
            altitude -= (1/10 * maxAltitude)
            accelerate()
         }
    }
    
    
    func bankRight() {
        if inFlight {
            heading += 45.0
            speed -= (1/10 * speed)
        }
    }
    
    
    func bankLeft() {
        if inFlight {
            heading -= 45.0
            speed -= (1/10 * speed)
        }
    }
    
    
}







