//
//  ViewController.swift
//  KittyWars
//
//  Created by Sahaj Bhatt on 2/19/16.
//  Copyright © 2016 Sahaj Bhatt. All rights reserved.
//

import UIKit
import Firebase

class LaunchMenu: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let defaults = NSUserDefaults.standardUserDefaults()
        Firebase.defaultConfig().persistenceEnabled = true
        if let user = defaults.stringForKey("username") {
            print(user)
            let usersRef = myRootRef.childByAppendingPath("users")
            usersRef.childByAppendingPath(user).keepSynced(true)
            usersRef.childByAppendingPath(user).observeEventType(.Value, withBlock: {
                snapshot in
                let userData = snapshot.value as! [String : AnyObject]
                if (userData["type"] as! String == "Ninja") {
                    hero = NinjaKitty(name: user, baseHP: userData["baseHP"] as! Double, attack: userData["attack"] as! Double, defense: userData["defense"] as! Double, level: userData["level"] as! Int, xp: userData["xp"] as! Int, amtKills: userData["amtKills"] as! Int)
                } else {
                    hero = PirateKitty(name: user, baseHP: userData["baseHP"] as! Double, attack: userData["attack"] as! Double, defense: userData["defense"] as! Double, level: userData["level"] as! Int, xp: userData["xp"] as! Int, amtKills: userData["amtKills"] as! Int)
                }
                })
        }
    }

    @IBAction func playGame(sender: AnyObject) {
        if (hero != nil) {
            self.performSegueWithIdentifier("returningPlayerSegue", sender: self)
        } else {
            self.performSegueWithIdentifier("newPlayerSegue", sender: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

