//
//  VerticalStackView.swift
//  ShopsKeeper
//
//  Created by Халим Магомедов on 17.09.2021.
//

import UIKit

class VerticalStackView: UIStackView {
    init (arrangedSubView: [UIView], spacing: CGFloat = 0) {
        super.init(frame: .zero)
        
        arrangedSubviews.forEach({addArrangedSubview($0)})
        self.spacing = spacing
        self.axis = .vertical
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}




