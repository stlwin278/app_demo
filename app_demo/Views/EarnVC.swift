//
//  EarnVC.swift
//  app_demo
//
//  Created by SanThit on 30/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
import UIKit

class EarnVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var cvEarn: UICollectionView!
    
    var earnPointList: [Earns]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cvEarn.delegate = self
        cvEarn.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return earnPointList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "earnCell", for: indexPath as IndexPath) as! EarnCell
        cell.displayContent(item: earnPointList[indexPath.row]
        )
        return cell
    }
    
}
