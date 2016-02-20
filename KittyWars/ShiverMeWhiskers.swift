//
//  ShiverMeWhiskers.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/20/16.
//  Copyright © 2016 Sahaj Bhatt. All rights reserved.
//

import Foundation

class ShiverMeWhiskers: Ability {
    var amt : Int //negative if healing, positive if dealing damage
    
    override init() {
        amt = 50
        super.init()
        unlockLevel = 7
        abilityType = "Defense"
        typeOfKitty = "PirateKitty"
    }
    
    func run() {
        
    }
}