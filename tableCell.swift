//
//  tableCell.swift
//  Talentify
//
//  Created by Developer on 24/04/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

class tableCell: UITableViewCell {
    
    @IBOutlet weak var jourLb1: UILabel!
    @IBOutlet weak var NomLb1: UILabel!
    @IBOutlet weak var prixLb1: UILabel!
    @IBOutlet weak var nombreLb1: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
