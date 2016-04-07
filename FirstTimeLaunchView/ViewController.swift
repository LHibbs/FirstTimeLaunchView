//
//  ViewController.swift
//  FirstTimeLaunchView
//
//  Created by Lauren Hibbs on 4/6/16.
//  Copyright © 2016 Lauren Hibbs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "FirstTimeView" {
            if let navigationController = segue.destinationViewController as? UINavigationController {
                if let viewController = navigationController.topViewController as? AddInfo {
                    viewController.managedObjectContext = managedObjectContext
                }
            }
        }
    }
*/
    
    override func viewDidAppear(animated: Bool)
    {
        if !NSUserDefaults.standardUserDefaults().boolForKey("FirstLaunch") {
            // Terms have not been accepted. Show terms (perhaps using performSegueWithIdentifier)
            performSegueWithIdentifier("FirstTimeView", sender: self)
            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "FirstLaunch")  
        }
        
    }


}

