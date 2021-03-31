//
//  loafjetTableViewCell.swift
//  Loafjet_Example
//
//  Created by Gokul Nair on 31/03/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit

class loafjetTableViewCell: UITableViewCell {

    @IBOutlet weak var exImage: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!
    @IBOutlet weak var subLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
