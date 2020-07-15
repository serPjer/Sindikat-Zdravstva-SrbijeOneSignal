//
//  FavoriteCell.swift
//  Sindikat Zdravstva Srbije
//
//  Created by Petar Stijepcic on 4/12/20.
//  Copyright © 2020 2ADesign. All rights reserved.
//

import UIKit

class SearchCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
    @IBOutlet weak var searchImage: UIImageView!
    @IBOutlet weak var titleTextSearch: UITextView!
    
    
    
}

