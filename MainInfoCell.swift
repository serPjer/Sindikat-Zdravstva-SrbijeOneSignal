//
//  MainInfoCell.swift
//  Sindikat Zdravstva Srbije
//
//  Created by PjerAna on 03/05/2020.
//  Copyright © 2020 2ADesign. All rights reserved.
//

import UIKit
import SafariServices

class MainInfoCell: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {

                   let image: UIImage = UIImage(named: "sindikat")!
                   let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                   imageView.contentMode = .scaleAspectFit
                   imageView.image = image
                   self.navigationItem.titleView = imageView
       }

    @IBAction func aplicationForm(_ sender: Any) {
          showSafariVC(for: "http://zdravko.org.rs/wp-content/uploads/2017/05/zasto-nas-Sindikat.jpg" )
        
    }
    @IBAction func usefullLinks(_ sender: Any) {
        showSafariVC2(for:   "https://zdravko.org.rs/wp-content/uploads/2017/05/PRISTUPNICA-2017_a.pdf")
    }
 
    @IBAction func documents(_ sender: Any) {
        showSafariVC3(for: "http://zdravko.org.rs/covid-19/")
    }
    
    
    func showSafariVC(for url: String) {
                  guard let url = URL(string: url) else {
                      return
                  }
                  
                  let safariVC = SFSafariViewController(url: url)
                   present(safariVC, animated: true)
              }
    
    func showSafariVC2(for url: String) {
        guard let url = URL(string: url) else {
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
         present(safariVC, animated: true)
    }
    
    func showSafariVC3(for url: String) {
           guard let url = URL(string: url) else {
               return
           }
           
           let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true)
       }

}

func urlString(string: String) -> String {
    var result = string
    result = result.replacingOccurrences(of: "š", with: "%C5%A1")
    result = result.replacingOccurrences(of: "ć", with: "%C4%87")
    result = result.replacingOccurrences(of: "č", with: "%C4%8D")
    result = result.replacingOccurrences(of: "ž", with: "%C5%BE")
    result = result.replacingOccurrences(of: "đ", with: "%C4%91")

    result = result.replacingOccurrences(of: "Š", with: "%C5%A0")
    result = result.replacingOccurrences(of: "Ć", with: "%C4%86")
    result = result.replacingOccurrences(of: "Č", with: "%C4%8C")
    result = result.replacingOccurrences(of: "Ž", with: "%C5%BD")
    result = result.replacingOccurrences(of: "Đ", with: "%C4%90")


    return result
    
    
}
