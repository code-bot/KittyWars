//
//  ShiverMeWhiskers.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/20/16.
//  Copyright © 2016 Sahaj Bhatt. All rights reserved.
//

import Foundation

class ShiverMeWhiskers: Ability {
    var unlockLevel : Int
    var amt : Int //negative if healing, positive if dealing damage
    
    override init() {
        abilityType = "Defense"
        amt = 40
        typeOfKitty = "PirateKitty"
    }
    
    func run() {
        
    }
}