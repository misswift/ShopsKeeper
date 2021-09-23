//
//  HomeHeaderCell.swift
//  ShopsKeeper
//
//  Created by Халим Магомедов on 17.09.2021.
//

import UIKit

class HomeHeaderCell: UICollectionViewCell {
    
    let companyLabel = UILabel(text: "Shops", font: .boldSystemFont(ofSize: 12))
    let imageView = UIImageView(cornerRadius: 13)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        companyLabel.textColor = .blue
        imageView.backgroundColor = .red
        
        let stackView = VerticalStackView(arrangedSubviews: [
            companyLabel,
            imageView
            ], spacing: 12)
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 16, left: 12, bottom: 12, right: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
    

