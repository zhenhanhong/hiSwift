//
//  MYCollectionViewCell.swift
//  HellowSwift
//
//  Created by 甄翰宏 on 16/2/13.
//  Copyright © 2016年 甄翰宏. All rights reserved.
//

import UIKit

class MYCollectionViewCell: UICollectionViewCell {
    @IBOutlet var img1: UIImageView!

    @IBOutlet var img2: UIImageView!
    @IBOutlet var img3: UIImageView!
    @IBOutlet var brief: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
