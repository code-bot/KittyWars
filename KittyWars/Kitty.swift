//
//  Kitty.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/19/16.
//  Copyright © 2016 Rahul Nambiar. All rights reserved.
//

import Foundation

class Kitty {
    var name : String
    var currentHP : Int
    var baseHP : Int
    var attack : Int
    var defense : Int
    var level : Int
    var alive : Bool
    var xp : Int
    var abilitiesList : [Ability]
    var amtKills : Int
    var kittyType : Kitty
    
    init(name : String, baseHP : Int, attack : Int, defense : Int,
        level: Int, xp : Int,  amtKills : Int) {
            self.name = name
            self.baseHP = baseHP
            self.attack = attack
            self.defense = defense
            self.level = level
            self.xp = xp
            self.amtKills = amtKills
            currentHP = baseHP;
            alive = true;
            abilitiesList = [Purrtect(), ShurikenStorm(), KittyKlaws(), FurrySwipes(),
            ShiverMeWhiskers(), AhoyMeowy(), CatastrophicCannonballs(), Purrley()]
    }
    
    func addAbility(a : Ability) {
        abilitiesList.append(a)
    }
    
    func displayMeleeAbilities() -> [Ability]() {
        for a in abilitiesList {
    
        }
    }
    
    func displayRangedAbilities() -> [Ability]() {
    
    }
    
    func displayDefensiveAbilities() -> [Ability]() {
    
    }
    
    func levelUp() {
        xp -= 100
        level++
        attack += 10
        defense += 10
        agility += 10
        baseHP += 20
        currentHP = baseHP
        //checks to see if ability needs to be added
        addAbility(<#T##a: Ability##Ability#>)
    }
    
    func win() {
        amtKills++
        xp += 20
        if (xp >= 100) {
            levelUp()
        }
    }
    
    func lose() {
        
    }
}