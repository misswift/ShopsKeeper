//
//  HomeHeaderCell.swift
//  ShopsKeeper
//
//  Created by Халим Магомедов on 17.09.2021.
//

import UIKit

class HomeHeaderCell: UICollectionViewCell {
    
    let actionImage : UIImageView = {
        let actionImag = UIImageView()
        actionImag.backgroundColor = .cyan
        actionImag.clipsToBounds = true
        return actionImag
    }()
 
    
    override init(frame: CGRect) {
        super.init(frame: frame)
      
       // backgroundColor = .red
        
        addSubview(actionImage)
        actionImage.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
     
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
