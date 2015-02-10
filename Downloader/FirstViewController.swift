//
//  FirstViewController.swift
//  Downloader
//
//  Created by Anthony Chaseendran on 2/4/15.
//  Copyright (c) 2015 Anthony Chaseendran. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var button_master: UIButton!
    @IBOutlet weak var button_release: UIButton!
    @IBOutlet weak var button_cocos: UIButton!
    @IBOutlet weak var button_pullRequest: UIButton!
    
    @IBAction func unwindToViewController(Sender:UIStoryboardSegue){
        
    }
    
    var branchPR:String! = ""
    
    @IBAction func userInput(sender: UIButton) {
        let inputBox = UIAlertController(title: "Pull Requests", message: "", preferredStyle: .Alert)
        let inputNo = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        let inputOK = UIAlertAction(title: "OK", style: .Default, handler:
            {(action) -> Void in
                let textField = inputBox.textFields![0] as UITextField
                self.branchPR = textField.text
                if (self.branchPR.isEmpty == false)
                {
                    self.performSegueWithIdentifier("segue_pr", sender: self)
                }
        })
        inputBox.addTextFieldWithConfigurationHandler(addTextField)
        inputBox.addAction(inputNo)
        inputBox.addAction(inputOK)
        self.presentViewController(inputBox, animated: true) {
        }
    }
    
    func addTextField(textField: UITextField!) {
        textField.placeholder = "Enter PR Branch Name"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String!, sender: AnyObject?) -> Bool {
        if identifier == "segue_pr" {
            if(branchPR == ""){
                return false
            } else {
                return true
            }
        }
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var svc = segue.destinationViewController as WebViewController
        if segue.identifier == "segue_master" {
            svc.dataPassed = sender?.tag
        }
        else if segue.identifier == "segue_pr" {
            svc.dataPassed = 3
            svc.dataWeb = branchPR
            branchPR = ""
        }
    }
    
    
    
    
}

