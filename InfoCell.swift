//
//  InfoCell.swift
//  Sindikat Zdravstva
//
//  Created by Petar Stijepcic on 2/19/20.
//  Copyright © 2020 2ADesign. All rights reserved.
//

import UIKit

class InfoCell: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
    
                    let image: UIImage = UIImage(named: "sindikat")!
                    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                    imageView.contentMode = .scaleAspectFit
                    imageView.image = image
                    self.navigationItem.titleView = imageView
    }
    
    @IBAction func mailtoButton(_ sender: Any) {
        
        let email = "sindikatzdravstva@yahoo.com"
        
        if let url = URL(string: "mailto:\(email)") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        
    }
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var textLink: UITextView!
}

