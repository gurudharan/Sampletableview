//
//  tableviewTableViewCell.swift
//  sampletableview
//
//  Created by OCS Developer 15 on 03/06/17.
//  Copyright © 2017 OCS Developer 15. All rights reserved.
//

import UIKit

class tableviewTableViewCell: UITableViewCell {

    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var namelbl: UILabel!
    
    @IBOutlet weak var timelbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
