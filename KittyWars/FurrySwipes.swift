//
//  KittyKlaws.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/20/16.
//  Copyright © 2016 Rahul Nambiar. All rights reserved.
//

import Foundation

class FurrySwipes: Ability {
    var amt : Int //negative if healing, positive if dealing damage
    
    override init() {
        amt = 20
        super.init()
        unlockLevel = 1
        abilityType = "Melee"
        typeOfKitty = "NinjaKitty"
    }
    
    func run() {
        
    }
}