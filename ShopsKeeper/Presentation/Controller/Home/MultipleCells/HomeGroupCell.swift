//
//  HomeGroupCell.swift
//  ShopsKeeper
//
//  Created by Халим Магомедов on 23.08.2021.
//

import Foundation
import UIKit

class HomeGroupCell: UICollectionViewCell{
    
    let titleLabel : UILabel = {
        let label = UILabel()
        label.text = "Section"
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()
    
    let horizontalController =  HomeHorizontalController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .lightGray
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        addSubview(horizontalController.view)
        horizontalController.view.translatesAutoresizingMaskIntoConstraints = false
        horizontalController.view.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        horizontalController.view.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        horizontalController.view.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        horizontalController.view.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        horizontalController.view.backgroundColor = .blue
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init coder has not been implemented")
    
    }
}
