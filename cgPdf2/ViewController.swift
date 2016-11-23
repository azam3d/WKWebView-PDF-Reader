//
//  ViewController.swift
//  cgPdf2
//
//  Created by Muhammad Azam Bin Baderi on 11/22/16.
//  Copyright © 2016 Muhammad Azam Bin Baderi. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let documentURL = Bundle.main.path(forResource: "mongodb", ofType: "pdf")
        let url = NSURL.init(fileURLWithPath: documentURL!)
        let request = URLRequest(url: url as URL)
        
        webView = WKWebView(frame: view.frame)
        webView?.navigationDelegate = self
        let _ = webView?.load(request)
        view.addSubview(webView!)
        view.sendSubview(toBack: webView!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

