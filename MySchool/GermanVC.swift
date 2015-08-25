//
//  GermanVC.swift
//  MySchool
//
//  Created by Etienne HERMAND on 25/08/15.
//  Copyright (c) 2015 Etienne HERMAND. All rights reserved.
//

import Foundation

import UIKit

class GermanVC: UIViewController {
    
    @IBOutlet weak var GermanDone: UIButton!
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        let prefs:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        let isLoggedIn:Int = prefs.integerForKey("ISLOGGEDIN") as Int
        if ((isLoggedIn != 1) && (isLoggedIn != 2)){
            self.performSegueWithIdentifier("goto_login", sender: self)
        } else {
         /*   self.usernameLabel.text = prefs.valueForKey("USERNAME") as? String*/
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // #pragma mark - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func GermanDone(sender: UIButton) {
        
    self.dismissViewControllerAnimated(true, completion: nil)    
        
    }
    

}
