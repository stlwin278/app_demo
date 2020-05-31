//
//  BannerCell.swift
//  app_demo
//
//  Created by SanThit on 29/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

class BannerCell: UICollectionViewCell {
    
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var imgBanner: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func displayContent(item: Banners) {
        lbTitle.text = item.title ?? "-"
        imgBanner.sd_setImage(with: URL(string: item.image_mobile_banner_url!))
    }
}
