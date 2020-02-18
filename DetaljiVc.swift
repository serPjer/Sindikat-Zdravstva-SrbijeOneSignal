//
//  DetaljiVc.swift
//  Zdravko
//
//  Created by Petar Stijepcic on 1/31/20.
//  Copyright © 2020 Milan Todorovic. All rights reserved.
//

import UIKit
import WebKit

class DetaljiVc: UIViewController {

    @IBOutlet weak var prikaTeksta: UITextView!
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
           super.viewDidLoad()

           let url = URL(string: "https://sind-obr.org.rs")
           let request = URLRequest(url: url!)
           
           webView.load(request)
        
         
        
       }
       
    var labela: String
    


}
