//
//  Catless.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/20/16.
//  Copyright © 2016 Sahaj Bhatt. All rights reserved.
//

import Foundation

class Catless: Ability {
    var amt : Int //negative if healing, positive if dealing damage
    
    override init() {
        amt = 30
        super.init()
        unlockLevel = 2
        abilityType = "Melee"
        typeOfKitty = "NinjaKitty"
    }
    
    func run() {
        
    }
}