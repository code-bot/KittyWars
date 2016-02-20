//
//  Purrley.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/20/16.
//  Copyright © 2016 Sahaj Bhatt. All rights reserved.
//

import Foundation

class Purrley: Ability {
    var amt : Int //negative if healing, positive if dealing damage
    
    override init() {
        amt = 15
        super.init()
        unlockLevel = 1
        abilityType = "Melee"
        typeOfKitty = "PirateKitty"
    }
    
    func run() {
        
    }
}