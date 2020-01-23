//
//  CustomizedTableViewCell.swift
//  Quote
//
//  Created by Tanvir on 1/22/20.
//  Copyright © 2020 tanvir841. All rights reserved.
//

import UIKit

class CustomizedTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var quoteTxt: UILabel!
    @IBOutlet weak var quoteAuth: UILabel!
    @IBOutlet weak var favorite: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
   
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func fav(_ sender: Any) {
        if favorite.image == #imageLiteral(resourceName: "heart"){
            favorite.image = #imageLiteral(resourceName: "fill")
        }
        else{
            favorite.image = #imageLiteral(resourceName: "heart")
        }
        
    }
    
}

