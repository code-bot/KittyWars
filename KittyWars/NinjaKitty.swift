//
//  NinjaKitty.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/19/16.
//  Copyright © 2016 Rahul Nambiar. All rights reserved.
//

import Foundation

class NinjaKitty: Kitty {
    
    init(name : String) {
        super.init(name : name, baseHP : 120, attack : 12, defense : 8, level : 1, xp : 0, amtKills : 0)
    }
    
    override init(name : String, baseHP : Int, attack : Int, defense : Int,
        level: Int, xp : Int,  amtKills : Int) {
            self.name = name
            self.baseHP = baseHP
            self.attack = attack
            self.defense = defense
            self.level = level
            self.xp = xp
            self.amtKills = amtKills
            currentHP = baseHP
            alive = true
            abilitiesList = [Purrtect(), ShurikenStorm(), KittyKlaws(), FurrySwipes()];
    }
    
    func performAbility(a : Ability, enemy : PirateKitty) {
        enemy.hp -= a.run()
    }
}