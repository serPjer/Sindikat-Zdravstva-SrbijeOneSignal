//
//  DetailVc.swift
//  Zdravko
//
//  Created by Petar Stijepcic on 2/1/20.
//  Copyright © 2020 Milan Todorovic. All rights reserved.
//

import UIKit
import WebKit

var newsIndex = -1

class DetailVc: UIViewController {
    
 
    @IBOutlet weak var labelaIspis: UILabel!
    @IBOutlet weak var webImage: WKWebView!
    
    override func viewWillAppear(_ animated: Bool) {
    
                    let image: UIImage = UIImage(named: "sindikat")!
                    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                    imageView.contentMode = .scaleAspectFit
                    imageView.image = image
                    self.navigationItem.titleView = imageView
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if newsIndex >= 0 {
            
            if let post = allPosts {
            
//            textField.text = post[newsIndex].content.rendered
              imageDetails.image = allImages?[newsIndex]
               
                
                let htmlString = post[newsIndex].content.rendered
//                print(htmlString)
                
             
                let matched = matches(for: "(http|ftp|https)://([\\w_-]+(?:(?:\\.[\\w_-]+)+))([\\w.,@?^=%&:/~+#-]*[\\w@?^=%&/~+#-])?", in: String(htmlString))
            
//                   print(matched)
                
                var index1 = [Int:String]()
                
                for (index, element) in matched.enumerated(){
//                    print(index, ":", element)
                    index1[index] = element
                }
                
                
               print(index1)
                
//                textField.attributedText = htmlString.htmlToAttributedString
            
               
               let wB = WKWebView()
                wB.loadHTMLString("<html><body><p><font size=6>" + htmlString + "</font></p></body></html>", baseURL: nil)
                let content = "<html><body><p><font size=6>" + htmlString + "</font></p></body></html>"
                webView.loadHTMLString(content, baseURL: nil)
                
                
//                let data = htmlString.data(using: String.Encoding.unicode)!
//                let attrStr = try? NSAttributedString(
//                    data: data,
//                    options: [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html],
//                documentAttributes: nil)
//                textField.attributedText = attrStr
                
//                let fullString = NSMutableAttributedString(string: post[newsIndex].content.rendered)
//
//
           }
        }
        
    }
    
    @IBOutlet weak var textField: UITextView!
    
    @IBOutlet weak var imageDetails: UIImageView!
   
    @IBAction func share(_ sender: Any) {
        
        if let post = allPosts {
        
            let activityVC = UIActivityViewController(activityItems: [post[newsIndex].link], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(activityVC, animated: true, completion: nil)
        }
    }
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var imageWebView: WKWebView!
    
    func matches(for regex: String!, in text: String) -> [String] {
        
        do {
            let regex = try NSRegularExpression(pattern: regex, options: [])
            let nsString = text as NSString
            let results = regex.matches(in: text, range: NSMakeRange(0, nsString.length))
            return results.map { nsString.substring(with: $0.range)}
        } catch let error as NSError {
            print("invalid regrex: \(error.localizedDescription)")
            return []
        }
    }
}

extension String {
    
    var htmlToAttributedString: NSAttributedString? {
                       guard let data = data(using: .utf8) else { return NSAttributedString()}
                       do {
                       
                           return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue], documentAttributes: nil)
                       } catch {
                           return NSAttributedString()
                       }
                   }
                   var htmlToString: String{
                       return htmlToAttributedString?.string  ?? ""
                   }
}
