//
//  KittyKlaws.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/20/16.
//  Copyright © 2016 Sahaj Bhatt. All rights reserved.
//

import Foundation

class KittyKlaws: Ability {
    var amt : Int //negative if healing, positive if dealing damage
    
    override init() {
        amt = 25
        super.init()
        unlockLevel = 4
        abilityType = "Defense"
        typeOfKitty = "NinjaKitty"
        
    }
    
    func run() {
        
    }
}