//
//  Purrtect.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/20/16.
//  Copyright © 2016 Rahul Nambiar. All rights reserved.
//

import Foundation

class Purrtect: Ability {
    var amt : Int //negative if healing, positive if dealing damage
    
    override init() {
        amt = 50
        super.init()
        unlockLevel = 7
        abilityType = "Defense"
        typeOfKitty = "NinjaKitty"
    }
    
    func run() {
        
    }
}