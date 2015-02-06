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
    
    var webAddress = "e"
    
    @IBAction func tapped_master(sender: UIButton!) {
        webAddress = "master"
    }
    
    @IBAction func tapped_release(sender: UIButton!) {
        webAddress = "release"
    }
    
    
    @IBAction func tapped_cocos(sender: UIButton!) {
        webAddress = "lm-cocos2d"
    }
    
    @IBAction func unwindToViewController(Sender:UIStoryboardSegue){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       if (segue.identifier == "segue_master") {
            var svc = segue.destinationViewController as WebViewController
           svc.dataPassed = sender?.tag
    }
        
    }


}

