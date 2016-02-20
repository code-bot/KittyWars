//
//  ShurikenStorm.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/20/16.
//  Copyright © 2016 Rahul Nambiar. All rights reserved.
//

import Foundation

class ShurikenStorm: Ability {
    var amt : Int //negative if healing, positive if dealing damage
    
    override init() {
        amt = 95
        super.init()
        unlockLevel = 9
        abilityType = "Ranged"
        typeOfKitty = "NinjaKitty"
        
    }
    
    func run() {
        
    }
}