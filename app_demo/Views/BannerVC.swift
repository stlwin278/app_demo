//
//  BannerVC.swift
//  app_demo
//
//  Created by SanThit on 29/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
import UIKit

class BannerVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var cvBanner: UICollectionView!
    
    var bannerList: [Banners]!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        cvBanner.delegate = self
        cvBanner.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bannerList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bannerCell", for: indexPath as IndexPath) as! BannerCell
        cell.displayContent(item: bannerList[indexPath.row])
        return cell
    }
}
