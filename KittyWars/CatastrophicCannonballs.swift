//
//  CatastrophicCannonballs.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/20/16.
//  Copyright © 2016 Sahaj Bhatt. All rights reserved.
//

import Foundation

class CatastrophicCannonballs: Ability {
    var amt : Int //negative if healing, positive if dealing damage
    
    override init() {
        amt = 65
        super.init()
        unlockLevel = 6
        abilityType = "Ranged"
        typeOfKitty = "PirateKitty"
    }
    
    func run() {
        
    }
}