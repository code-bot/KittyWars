//
//  NinjaKitty.swift
//  KittyWars
//
//  Created by Rahul Nambiar on 2/19/16.
//  Copyright © 2016 Rahul Nambiar. All rights reserved.
//

import Foundation
import Darwin

class NinjaKitty: Kitty {
    
    init(name : String) {
        super.init(name: name, baseHP : 110.0, attack : 1.2, defense : 0.05, level : 1, xp : 0, amtKills : 0)
        abilitiesList = [FurrySwipes(), DeadlyStare(), KittyKlaws(), KatanaSlash(), Purrtect(),
            ShurikenStorm()];
        kittyType = "Ninja"
    }
    
    override init(name : String, baseHP : Double, attack : Double, defense : Double,
        level: Int, xp : Int,  amtKills : Int) {
            super.init(name: name, baseHP: baseHP, attack: attack, defense: defense, level: level, xp: xp, amtKills: amtKills)
            abilitiesList = [FurrySwipes(), DeadlyStare(), KittyKlaws(), KatanaSlash(), Purrtect(),
                ShurikenStorm()];
            kittyType = "Ninja"
    }
    
    //need to implement
//    func performAbility(a : Ability, enemy : PirateKitty) {
//        enemy.hp -= a.run()
//    }
    
    func createEnemy() {
        var enemy : PirateKitty
        if level < 2 {
            enemy = PirateKitty(name : "Pirate Bobberman")
        } else {
            var rand = Int(arc4random_uniform(3)) + level - 1
            enemy = PirateKitty(name : "Captain Blackwhiskers")
            for index in 1...(level - 1) {
                enemy.levelUp()
            }
        }
    }
    
    func displayMeleeAbilities() -> [Ability] {
        var meleeList = [Ability]();
        for a in abilitiesList {
            if a.abilityType == "Melee" && a.unlockLevel <= level {
                meleeList.append(a)
            }
        }
        return meleeList;
    }
    
    func displayRangedAbilities() -> [Ability] {
        var rangedList = [Ability]();
        for a in abilitiesList {
            if a.abilityType == "Ranged" && a.unlockLevel <= level {
                rangedList.append(a)
            }
        }
        return rangedList;
    }
    
    func displayDefenseAbilities() -> [Ability] {
        var defenseList = [Ability]();
        for a in abilitiesList {
            if a.abilityType == "Defense" && a.unlockLevel <= level {
                defenseList.append(a)
            }
        }
        return defenseList;
    }
}