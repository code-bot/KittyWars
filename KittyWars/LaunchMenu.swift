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
    }

    @IBAction func playGame(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        if let user = defaults.stringForKey("username") {
            Firebase.defaultConfig().persistenceEnabled = true
            print(user)
            usersRef = myRootRef.childByAppendingPath("users")
            usersRef.childByAppendingPath(user).keepSynced(true)
            let userData
            usersRef.childByAppendingPath(user).observeEventType(.Value, withBlock {
                snapshot in
                userData = snapshot.value
            })
            self.performSegueWithIdentifier("returningPlayerSegue", sender: userData)
        } else {
            self.performSegueWithIdentifier("newPlayerSegue", sender: nil)
        //hi
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

