//
//  BrandVC.swift
//  app_demo
//
//  Created by SanThit on 30/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

class BrandVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var cvBrand: UICollectionView!
    
    var merchantList: [Merchants]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cvBrand.delegate = self
        cvBrand.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return merchantList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "brandCell", for: indexPath as IndexPath) as! BrandCell
        cell.displayContent(item: merchantList[indexPath.row])
        return cell
    }
}
