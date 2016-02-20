//
//  Purrtect.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/20/16.
//  Copyright © 2016 Rahul Nambiar. All rights reserved.
//

import Foundation

class Purrtect: Ability {
    var unlockLevel : Int
    var amt : Int //negative if healing, positive if dealing damage
    
    override init() {
        abilityType = "Defense"
        amt = 50
        typeOfKitty = "NinjaKitty"
    }
    
    func run() {
        
    }
}