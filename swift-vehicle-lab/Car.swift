//
//  Car.swift
//  swift-vehicle-lab
//
//  Created by Tameika Lawrence on 10/2/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation



class Car: Vehicle {
    
    let transmission: String
    let cylinders: Int
    let milesPerGallon: Double
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double) {
        
        self.transmission = transmission
        self.cylinders = cylinders
        self.milesPerGallon = milesPerGallon
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
        
    }
    
    func drive() {
        accelerate()
    }
    
    func brake() {
        decelerate()
    }
    
    
}





//Write a designated initializer that takes six arguments total, the three arguments for the superclass's initializer (name, weight, and maxSpeed), and three arguments for these new properties (transmission, cylinders, and milesPerGallon). The initializer should set all three new properties to their associated arguments, and call the superclass's initializer, passing it the correct arguments that it requires.


