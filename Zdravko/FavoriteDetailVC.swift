//
//  FavoriteDetailVC.swift
//  Sindikat Zdravstva Srbije
//
//  Created by Petar Stijepcic on 4/16/20.
//  Copyright © 2020 2ADesign. All rights reserved.
//

import UIKit
import WebKit

class FavoriteDetailVC: UIViewController, WKUIDelegate {
    
    override func viewWillAppear(_ animated: Bool) {

                   let image: UIImage = UIImage(named: "sindikat")!
                   let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                   imageView.contentMode = .scaleAspectFit
                   imageView.image = image
                   self.navigationItem.titleView = imageView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        favWebViewDetails.uiDelegate = self

         if newsIndex >= 0 {
                   
                    favDetailImage.image = favArray[newsIndex].image
                      
                    let htmlString = webViewString(string: favArray[newsIndex].content)
                    
                       let wB = WKWebView()
                       wB.loadHTMLString("<html><body><p><font size=6>" + htmlString + "</font></p></body></html>", baseURL: nil)
                       let content = "<html><body><p><font size=6>" + htmlString + "</font></p></body></html>"
                       favWebViewDetails.loadHTMLString(content, baseURL: nil)
                       
                    titleDetailText.text = favArray[newsIndex].name
                  
               }
    }
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
            if let frame = navigationAction.targetFrame,
                frame.isMainFrame {
                return nil
            }
            webView.load(navigationAction.request)
            return nil
    }
    
    @IBOutlet weak var favDetailImage: UIImageView!
    @IBOutlet weak var favWebViewDetails: WKWebView!
    @IBOutlet weak var titleDetailText: UITextView!
    
   
    
}
