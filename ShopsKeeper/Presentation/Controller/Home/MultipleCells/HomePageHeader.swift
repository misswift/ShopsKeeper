//
//  HomePageHeader.swift
//  ShopsKeeper
//
//  Created by Халим Магомедов on 12.09.2021.
//

import UIKit

class HomePageHeader: UICollectionReusableView {
    
    let homeHeaderHorizontalController = HomeHeaderHorizontalController()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        addSubview(homeHeaderHorizontalController.view)
        homeHeaderHorizontalController.view.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
