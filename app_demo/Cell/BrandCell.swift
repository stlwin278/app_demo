//
//  BrandCell.swift
//  app_demo
//
//  Created by SanThit on 30/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
import UIKit

class BrandCell: UICollectionViewCell {
    
    @IBOutlet weak var imgBrand: UIImageView!
    @IBOutlet weak var lbBrand: UILabel!
    @IBOutlet weak var lbDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func displayContent(item: Merchants) {
        lbBrand.text = item.name ?? "-"
        lbDescription.text = item.description ?? "-"
        imgBrand.sd_setImage(with: URL(string: (item.image_mobile_urls?[0])!))
    }
}
