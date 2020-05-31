//
//  NewsVC.swift
//  app_demo
//
//  Created by SanThit on 30/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
import UIKit

class NewsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var cvNews: UICollectionView!
    
    var newsList: [News]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cvNews.delegate = self
        cvNews.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newsList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newsCell", for: indexPath as IndexPath) as! NewsCell
        cell.displayContent(item: newsList[indexPath.row]
        )
        return cell
    }
    
}
