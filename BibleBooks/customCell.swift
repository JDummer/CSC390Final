//
//  customCell.swift
//  BibleBooks
//
//  Created by Jonathan Dummer on 12/14/15.
//  Copyright © 2015 cuw. All rights reserved.
//

import UIKit

class customCell: UITableViewCell
{
    @IBOutlet weak var bookLabel: UILabel!

    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
