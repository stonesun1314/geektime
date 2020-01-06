//
//  BannerView.swift
//  geektime
//
//  Created by Mac on 2020/1/6.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit
import SnapKit

protocol BannerViewDataSource: AnyObject {
    func numberOfBanners(_ bannerView: BannerView) -> Int
    
    func viewForBanner(_ bannerView: BannerView, index: Int, convertView: UIView) -> UIView
}

protocol BannerViewDelegate: AnyObject {
    
    func didSelectBanner(_ bannerView: BannerView, index: Int)
}

class BannerView: UIView, UICollectionViewDelegate, UICollectionViewDataSource {

    var collectionView: UICollectionView
    var flowLayout: UICollectionViewFlowLayout
    
    var pageControl: UIPageControl
    
    weak var dataSource: BannerViewDataSource!
    weak var delegate: BannerViewDelegate?
    
    var autoScrollInterval: Float = 0
    var isInfinite : Bool = true
    var timer: Timer?
    
    override init(frame: CGRect) {
//        flowLayout = UICollectionViewFlowLayout()
//        flowLayout.headerReferenceSize = .zero
//        flowLayout.footerReferenceSize = .zero
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    }

}
