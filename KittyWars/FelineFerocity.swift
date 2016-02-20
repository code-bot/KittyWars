//
//  FelineFerocity.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/20/16.
//  Copyright © 2016 Sahaj Bhatt. All rights reserved.
//

import Foundation

class FelineFerocity: Ability {
    var amt : Int //negative if healing, positive if dealing damage
    
    override init() {
        amt = 90
        super.init()
        unlockLevel = 9
        abilityType = "Melee"
        typeOfKitty = "NinjaKitty"
    }
    
    func run() {
        
    }
}