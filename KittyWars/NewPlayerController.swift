//
//  NewPlayerController.swift
//  KittyWars
//
//  Created by Sahaj Bhatt on 2/19/16.
//  Copyright © 2016 Sahaj Bhatt. All rights reserved.
//

import UIKit

class NewPlayerController: UIViewController {
    
    @IBOutlet weak var catName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func chooseNinja(sender: AnyObject) {
        if (catName.text != "") {
            myRootRef.authUser(catName.text, password:"pass") {
                error, authData in
                if (error != nil) {
                    //Something went wrong
                } else {
                    let newNinja = [
                        "type" : "Ninja",
                        "attack" : 10,
                        "baseHP" : 100,
                        "defense" : 10,
                        "level" : 1,
                        "xp" : 0,
                        "amtKills" : 0
                    ]
                    myRootRef.childByAppendingPath("users").childByAppendingPath(catName.text).setValue(newNinja)
                }
            }
            //segue and create new ninja
            let defaults = NSUserDefaults.standardUserDefaults()
            
            defaults.setValue(catName.text, forKey: "username")
            
            defaults.synchronize()
        } else {
            //if cat name empty
        }
    }
    
    @IBAction func choosePirate(sender: AnyObject) {
        if (catName.text != "") {
            myRootRef.authUser(catName.text, password:"pass") {
                error, authData in
                if (error != nil) {
                    //Something went wrong
                } else {
                    let newPirate = [
                        "type" : "Pirate",
                        "attack" : 10,
                        "baseHP" : 100,
                        "defense" : 10,
                        "level" : 1,
                        "xp" : 0,
                        "amtKills" : 0
                    ]
                    myRootRef.childByAppendingPath("users").childByAppendingPath(catName.text).setValue(newPirate)
                }
            }
            //segue and create new pirate
            let defaults = NSUserDefaults.standardUserDefaults()
            
            defaults.setValue(catName.text, forKey: "username")
            
            defaults.synchronize()
        } else {
            //if cat name empty
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
