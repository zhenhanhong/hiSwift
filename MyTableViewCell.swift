//
//  MyTableViewCell.swift
//  HellowSwift
//
//  Created by 甄翰宏 on 16/2/12.
//  Copyright © 2016年 甄翰宏. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet var img: UIImageView!
    
    @IBOutlet var title: UILabel!
    @IBOutlet var subtitle: UILabel!
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
