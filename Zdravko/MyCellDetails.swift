//
//  MyCellDetails.swift
//  Sindikat Zdravstva
//
//  Created by Petar Stijepcic on 2/19/20.
//  Copyright © 2020 2ADesign. All rights reserved.
//

import UIKit


class MyCellDetails: UITableViewCell {
    
    override func awakeFromNib() {
           super.awakeFromNib()
           // Initialization code
       }
    
    @IBOutlet weak var textViewDetails: UITextView!
    
    
   

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
