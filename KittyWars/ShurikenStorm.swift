//
//  ShurikenStorm.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/20/16.
//  Copyright © 2016 Rahul Nambiar. All rights reserved.
//

import Foundation

class ShurikenStorm: Ability {
    var unlockLevel : Int
    var amt : Int //negative if healing, positive if dealing damage
    
    override init() {
        abilityType = "Ranged"
        amt = 40
        typeOfKitty = "NinjaKitty"
    }
    
    func run() {
        
    }
}