//
//  KittyKlaws.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/20/16.
//  Copyright © 2016 Rahul Nambiar. All rights reserved.
//

import Foundation

class FurrySwipes: Ability {
    var unlockLevel : Int
    var amt : Int //negative if healing, positive if dealing damage
    
    override init() {
        unlockLevel = 1
        abilityType = "Melee"
        amt = 20
        typeOfKitty = "NinjaKitty"
    }
    
    func run() {
        
    }
}