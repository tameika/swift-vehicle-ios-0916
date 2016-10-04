//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Tameika Lawrence on 10/3/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation



class Jet: Plane {
    
    override func climb() {
        if inFlight {
        altitude += (1/5 * maxAltitude)
        }
    }
    
    override func dive() {
        if inFlight {
        altitude -= (1/5 * maxAltitude)
        }
    }
    
    
    func afterburner() {
        if inFlight && (self.speed == self.maxSpeed) {
            self.speed = self.maxSpeed * 2
        }
    }

}





