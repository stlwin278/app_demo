//
//  HomeView.swift
//  app_demo
//
//  Created by SanThit on 25/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import UIKit

class HomeView: UIViewController, UINavigationBarDelegate {

    @IBOutlet weak var naviBar: UINavigationBar!
    @IBOutlet weak var naviItem: UINavigationItem!
    
    fileprivate var bannerVC: BannerVC!
    fileprivate var brandVC: BrandVC!
    fileprivate var earnVC: EarnVC!
    fileprivate var newsVC: NewsVC!
    fileprivate var saleVC: SaleVC!
    
    var jsonData: JsonData = JsonData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        naviBar.delegate = self
        
        if #available(iOS 13.0, *) {
            naviBar.standardAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        } else {
            naviBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        }
        
        naviItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "menu_images"), style: .plain, target: self, action: #selector(addTap))
        naviItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "icon_images"), style: .plain, target: self, action: #selector(addTap))
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "banner" {
            bannerVC = segue.destination as? BannerVC
            bannerVC.bannerList = jsonData.loadData().data?.banners!
        }
        
        if segue.identifier == "brand" {
            brandVC = segue.destination as? BrandVC
            brandVC.merchantList = jsonData.loadData().data?.merchants!
        }
        
        if segue.identifier == "earn" {
            earnVC = segue.destination as? EarnVC
            earnVC.earnPointList = jsonData.loadData().data?.earns!
        }
        
        if segue.identifier == "news" {
            newsVC = segue.destination as? NewsVC
            newsVC.newsList = jsonData.loadData().data?.news!
        }
        
        if segue.identifier == "sale" {
            saleVC = segue.destination as? SaleVC
            saleVC.highlightList = jsonData.loadData().data?.highlights!
        }
    }
    
    @objc func addTap() {
        
    }
    
    func position(for bar: UIBarPositioning) -> UIBarPosition {
        return .topAttached
    }

    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
}

