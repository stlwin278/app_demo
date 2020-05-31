//
//  SaleCell.swift
//  app_demo
//
//  Created by SanThit on 30/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

class SaleCell: UICollectionViewCell {
    
    @IBOutlet weak var imgSale: UIImageView!
    @IBOutlet weak var lbDescription: UILabel!
    @IBOutlet weak var lbDiscountPoint: UILabel!
    @IBOutlet weak var lbOriginalPoint: UILabel!
    @IBOutlet weak var btnRedeem: UIButton!
    @IBOutlet weak var imgFavourite: UIImageView!
    @IBOutlet weak var hideDiscountPoint: NSLayoutConstraint!
    
    var isFavourite = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
        btnRedeem.layer.cornerRadius = 5
        btnRedeem.clipsToBounds = true
    }
    
    func displayContent(item: Products) {
        lbDescription.text = item.description ?? "-"
        imgSale.sd_setImage(with: URL(string: item.image_urls![0]))
        if item.point == 0 || item.point == nil {
            lbOriginalPoint.text = "0"
        } else {
            lbOriginalPoint.text = String(item.point!)
        }
        
        if item.discount_point != 0 {
            lbDiscountPoint.text = String(item.discount_point!)
            let attributes: [NSAttributedString.Key : Any] = [.strikethroughColor: UIColor.lightGray,
                                                              .strikethroughStyle: NSNumber(value: NSUnderlineStyle.single.rawValue),
                                                              .foregroundColor: UIColor.lightGray
            ]
            lbOriginalPoint.attributedText = NSAttributedString(string: String(item.point!), attributes: attributes)
            hideDiscountPoint.constant = 42
        } else {
            lbDiscountPoint.isHidden = true
            lbOriginalPoint.textColor = UIColor.orange
            hideDiscountPoint.constant = 5
        }
        
        if item.is_favorite! {
            imgFavourite.image = UIImage(systemName: "heart.fill")
        } else {
            imgFavourite.image = UIImage(systemName: "heart")
        }
    }
    
    @IBAction func setFavourite(_ sender: Any) {
        if isFavourite {
            isFavourite = false
            imgFavourite.image = UIImage(systemName: "heart.fill")
        } else {
            isFavourite = true
            imgFavourite.image = UIImage(systemName: "heart")
        }
    }
}
