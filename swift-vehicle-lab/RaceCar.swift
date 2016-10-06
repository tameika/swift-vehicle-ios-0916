//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Tameika Lawrence on 10/2/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation



class RaceCar: Car {
    
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    
    override func accelerate() {
        if speed < maxSpeed {
        speed += (0.2 * maxSpeed)
        }
    }
    
    override func decelerate() {
        if speed > 0.0 {
        speed -= (0.2 * maxSpeed)
        }
    }
    
  
    func driftRight() {
        if speed == 0.0 {
            heading = 0.0
        } else if heading >= 0.0 && heading <= 270.0 {
            heading += 90.0
            speed = speed * 0.75
        } else if heading <= 360.0 {
            heading = (heading + 90) - 360
            speed = speed * 0.75
        }
        
    }

    
    func driftLeft() {
        if speed == 0.0 {
            heading = 0.0
        } else if heading >= 90.0 {
            heading = heading - 90.0
            speed = speed * 0.75
        } else if heading <= 270.0 {
            heading = 360.0 - (90.0 - heading)
            speed = speed * 0.75
        }
    }

    
    
}



//func turnRight() {
//    if speed == 0.0 {
//        heading = 0.0
//    } else if heading >= 0.0 && heading <= 270.0 {
//        heading += 90.0
//        speed = speed / 2.0
//    } else if heading <= 360.0 {
//        heading = (heading + 90) - 360
//        speed = speed / 2.0
//    }
//    
//}
//
//
//
//func turnLeft() {
//    if speed == 0.0 {
//        heading = 0
//    } else if heading >= 90.0 {
//        heading = heading - 90.0
//        speed = speed / 2.0
//    } else if heading <= 270.0 {
//        heading = 360.0 - (90.0 - heading)
//        speed = speed / 2.0
//    }
//}
//
//
//
//



