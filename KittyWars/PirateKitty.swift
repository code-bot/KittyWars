//
//  PirateKitty.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/19/16.
//  Copyright © 2016 Rahul Nambiar. All rights reserved.
//

import Foundation

class PirateKitty {
    var name : String
    var currentHP : Int
    var baseHP : Int
    var attack : Int
    var defense : Int
    var agility : Int
    var level : Int
    var alive : Bool
    var xp : Int
    var abilitiesList = [Ability]()
    var amtKills : Int
    
    init(name : String) {
        self.name = name;
        currentHP = 150;
        baseHP = 150;
        attack = 10;
    }
}