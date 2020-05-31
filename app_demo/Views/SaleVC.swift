//
//  SaleVC.swift
//  app_demo
//
//  Created by SanThit on 30/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
import UIKit

class SaleVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var cvSale: UICollectionView!
    
    var highlightList: [Highlights]!
    var productList: [Products]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cvSale.delegate = self
        cvSale.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return highlightList[0].products!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "saleCell", for: indexPath as IndexPath) as! SaleCell
        cell.displayContent(item: highlightList[0].products![indexPath.row])
        return cell
    }
}
