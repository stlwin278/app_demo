//
//  NewsCell.swift
//  app_demo
//
//  Created by SanThit on 30/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

class NewsCell: UICollectionViewCell {
    
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var imgNews: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func displayContent(item: News) {
        lbTitle.text = item.title
        imgNews.sd_setImage(with: URL(string: item.image_mobile_url!))
    }
}
