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
    var dataWeb:String!
    var navTitle = ""
    var siteName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println(dataPassed)
        println(dataWeb)
        selectBranch(dataPassed)
        loadPage()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadPage() {
        navBar.title = navTitle
        var addEmUp = "http://s3.amazonaws.com/lumos-mobile-public/builds/"+siteName+"/index.html"
        println(addEmUp)
        var requestURL = NSURL(string: addEmUp)
        println(requestURL)
        let request = NSURLRequest(URL: requestURL!)
        view_master.loadRequest(request)
    }

    func selectBranch(dataPassed: Int){
 
        switch(dataPassed) {
        case 0:
            siteName = "master"
            navTitle = "Master"
        case 1:
            siteName = "release"
            navTitle = "Release"
        case 2:
            siteName = "lm-cocos2d"
            navTitle = "Cocos 2D"
        case 3:
            siteName = "pullRequests"
            navTitle = "Pull Requests"
        default:
            siteName = "error"
            navTitle = "error"
        }
        
    
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
