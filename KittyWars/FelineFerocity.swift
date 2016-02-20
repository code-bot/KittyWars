//
//  FelineFerocity.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/20/16.
//  Copyright © 2016 Sahaj Bhatt. All rights reserved.
//

import Foundation

class FelineFerocity: Ability {
    var unlockLevel : Int
    var amt : Int //negative if healing, positive if dealing damage
    
    override init() {
        unlockLevel = 9
        abilityType = "Melee"
        amt = 90
        typeOfKitty = "NinjaKitty"
    }
    
    func run() {
        
    }
}