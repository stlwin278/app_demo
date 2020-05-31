//
//  EarnCell.swift
//  app_demo
//
//  Created by SanThit on 30/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

class EarnCell: UICollectionViewCell {
    
    @IBOutlet weak var imgEarn: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbTerm: UILabel!
    @IBOutlet weak var btnFind: UIButton!
    @IBOutlet weak var imgFavourite: UIImageView!
    
    var isFavourite = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
        btnFind.layer.cornerRadius = 5
        btnFind.clipsToBounds = true
    }
    
    func displayContent(item: Earns) {
        lbTitle.text = item.title ?? "-"
        lbTerm.text = item.term ?? "-"
        imgEarn.sd_setImage(with: URL(string: item.image_urls![0]))
        
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
