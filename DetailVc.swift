//
//  DetailVc.swift
//  Zdravko
//
//  Created by Petar Stijepcic on 2/1/20.
//  Copyright © 2020 Milan Todorovic. All rights reserved.
//

import UIKit
import WebKit
import SafariServices

var favBool = false

var newsIndex = -1

var imageIndex = [Int]()


class DetailVc: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    
    override func viewWillAppear(_ animated: Bool) {
    
                    let image: UIImage = UIImage(named: "sindikat")!
                    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                    imageView.contentMode = .scaleAspectFit
                    imageView.image = image
                    self.navigationItem.titleView = imageView
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.uiDelegate = self
        
        
        
        if newsIndex >= 0 {
            
            if let post = allPosts {
            
                imageDetails.image = allImages?[newsIndex]
                
                let htmlString = webViewString(string: post[newsIndex].content.rendered)
                print(htmlString)
                let wB = WKWebView()
                wB.loadHTMLString("<html><body><p><font size=6>" + htmlString + "</font></p></body></html>", baseURL: nil)
                let content = "<html><body><p><font size=6>" + htmlString + "</font></p></body></html>"
                webView.loadHTMLString(content, baseURL: nil)
                
                textField.text = post[newsIndex].title.rendered
                
 
           }
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
    
    @IBOutlet weak var textField: UITextView!
    
    @IBOutlet weak var imageDetails: UIImageView!
    
    @IBAction func share(_ sender: Any) {
        
        if let post = allPosts {
            
            let shareLink = "http://zdravko.org.rs/?p=\(post[newsIndex].id)"
        
            let activityVC = UIActivityViewController(activityItems: [shareLink], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(activityVC, animated: true, completion: nil)
        }
    }
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var starButton: UIButton!
    
    var light: Bool = false
    
    @IBAction func favoriteButton(_ sender: UIButton) {
        
           if let post = allPosts, let images = allImages {
            
            favTitle = post[newsIndex].title.rendered
            favImg = images[newsIndex]!
            favContent = post[newsIndex].content.rendered
            favId = post[newsIndex].id
            
            starButton.setTitle("★", for: .normal)
            sender.isEnabled = false
           
                favArray.append((favTitle,favImg,favId,favContent))
           
           }
       }
   
}

func webViewString(string: String) -> String {
    var result = string
    result = result.replacingOccurrences(of: "/wp-content/", with: "http://zdravko.org.rs//wp-content/")
    result = result.replacingOccurrences(of: "http://zdravko.org.rshttp://zdravko.org.rs//wp-content/", with: "http://zdravko.org.rs//wp-content/")
    result = result.replacingOccurrences(of: "č", with: "%C4%8D")
    result = result.replacingOccurrences(of: "ž", with: "%C5%BE")
    result = result.replacingOccurrences(of: "đ", with: "%C4%91")

    result = result.replacingOccurrences(of: "Š", with: "%C5%A0")
    result = result.replacingOccurrences(of: "Ć", with: "%C4%86")
    result = result.replacingOccurrences(of: "Č", with: "%C4%8C")
    result = result.replacingOccurrences(of: "Ž", with: "%C5%BD")
    result = result.replacingOccurrences(of: "Đ", with: "%C4%90")
  
    result = result.replacingOccurrences(of: "COVID", with: " * ")
    result = result.replacingOccurrences(of: "COVID-19", with: " * ")
    result = result.replacingOccurrences(of: "covid - 19", with: " * ")
    result = result.replacingOccurrences(of: "Covid - 19", with: " * ")
    result = result.replacingOccurrences(of: "SARS-CoV-2", with: " * ")
    result = result.replacingOccurrences(of: "covid", with: " * ")
    result = result.replacingOccurrences(of: "SARS", with: " * ")
    result = result.replacingOccurrences(of: "H1N1", with: " * ")
    result = result.replacingOccurrences(of: "H1N1", with: " * ")
    result = result.replacingOccurrences(of: "-19", with: "")
    result = result.replacingOccurrences(of: " - 19", with: "")
    result = result.replacingOccurrences(of: "19.", with: "")
    
    
    return result
    
    
}
