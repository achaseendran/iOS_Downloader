//
//  WebViewController.swift
//  Downloader
//
//  Created by Anthony Chaseendran on 2/5/15.
//  Copyright (c) 2015 Anthony Chaseendran. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var view_master: UIWebView!
    @IBOutlet weak var navBar: UINavigationItem!
    
    var dataPassed:Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println(dataPassed)
        navBar.title = "anthony"
        let requestURL = NSURL(string: "http://s3.amazonaws.com/lumos-mobile-public/builds/master/index.html")
        let request = NSURLRequest(URL: requestURL!)
        view_master.loadRequest(request)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
