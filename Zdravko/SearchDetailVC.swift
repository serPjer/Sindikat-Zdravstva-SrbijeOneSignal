//
//  SearchDetailVC.swift
//  Sindikat Zdravstva Srbije
//
//  Created by Petar Stijepcic on 4/25/20.
//  Copyright © 2020 2ADesign. All rights reserved.
//


import UIKit
import WebKit

var favIndex = [Int]()

class SearchDetailVC: UIViewController, WKUIDelegate {
    
    
    override func viewWillAppear(_ animated: Bool) {
    
                    let image: UIImage = UIImage(named: "sindikat")!
                    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                    imageView.contentMode = .scaleAspectFit
                    imageView.image = image
                    self.navigationItem.titleView = imageView
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTable.reloadData()
        Posts.getPosts()
        
        
        searchWebView.uiDelegate = self
        
        if  searchIndex >= 0 {
            
            searchTitleText.text = currentSearchArray[searchIndex].titleName
            
            searchImageDetails.image = currentSearchArray[searchIndex].image

            let htmlString = webViewString(string: currentSearchArray[searchIndex].content)

                let wB = WKWebView()
                wB.loadHTMLString("<html><body><p><font size=6>" + htmlString + "</font></p></body></html>", baseURL: nil)
                let content = "<html><body><p><font size=6>" + htmlString + "</font></p></body></html>"
                searchWebView.loadHTMLString(content, baseURL: nil)
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
    
    @IBOutlet weak var searchTitleText: UITextView!
    @IBOutlet weak var searchImageDetails: UIImageView!
    @IBOutlet weak var searchWebView: WKWebView!
    
   
    @IBAction func searcShare(_ sender: Any) {
                   
            let shareLink = "http://zdravko.org.rs/?p=\(currentSearchArray[searchIndex].id)"
               
                   let activityVC = UIActivityViewController(activityItems: [shareLink], applicationActivities: nil)
               activityVC.popoverPresentationController?.sourceView = self.view
               
               self.present(activityVC, animated: true, completion: nil)
               
    }
    
    @IBOutlet weak var starButtonSearch: UIButton!
    
    @IBAction func searchFavoriteButton(_ sender: UIButton) {
        
        favTitle = currentSearchArray[searchIndex].titleName
        favContent = currentSearchArray[searchIndex].content
        favId = currentSearchArray[searchIndex].id
        favImg = currentSearchArray[searchIndex].image
                 

                 starButtonSearch.setTitle("★", for: .normal)
                 sender.isEnabled = false

        
        favArray.append((favTitle,favImg,favId,favContent))
        favIndex.append(searchIndex)
        
    }
}
