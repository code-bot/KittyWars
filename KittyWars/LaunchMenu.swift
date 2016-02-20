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
        Firebase.defaultConfig().persistenceEnabled = true
        if let user = defaults.stringForKey("username") {
            print(user)
            usersRef = myRootRef.childByAppendingPath("users")
            usersRef.childByAppendingPath(user).keepSynced(true)
            usersRef.childByAppendingPath(user).observeEventType(.Value, withBlock {
                snapshot in
                let userData = snapshot.value as! [String : Object]
                if (userData["type"] == "Ninja") {
                    hero = NinjaKitty(name: user, baseHP: userData["baseHP"], attack: userData["attack"], defense: userData["defense"], level: userData["level"], xp: userData["xp"], amtKills: userData["amtKills"])
                } else {
                    hero = PirateKitty(name: user, baseHP: userData["baseHP"], attack: userData["attack"], defense: userData["defense"], level: userData["level"], xp: userData["xp"], amtKills: userData["amtKills"])
                }
                })
        }
    }

    @IBAction func playGame(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
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

