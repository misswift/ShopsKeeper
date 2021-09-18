//
//  UserProfileCell.swift
//  ShopsKeeper
//
//  Created by Халим Магомедов on 10.05.2021.
//

import UIKit

class UserProfileCell: UITableViewCell {
    
    
    
    
    let labelUP : UILabel = {
        let lb = UILabel(frame: CGRect(x: 0, y: 0, width: 120, height: 50))
        lb.textColor = UIColor (hex:  "#3F5C70")
        lb.textAlignment = .left
        return lb
    }()
    
    let imageUP : UIImageView = {
        let iUP = UIImageView()
        return iUP
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()        }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //    override var isHighlighted : Bool {
    //        didSet {
    //            label.textColor = isHighlighted ?  UIColor(hexString: "#EE8C1A") : UIColor(hexString:  "#3F5C70")
    //        }
    //
    //    }
    //
    //    override var isSelected : Bool {
    //        didSet {
    //            label.textColor = isSelected ?   UIColor(hexString: "#EE8C1A") : UIColor(hexString: "#3F5C70")
    //        }
    //    }
    
    func setupViews(){
        backgroundColor = .white
        addSubview(imageUP)
//        imageUP.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
//        imageUP.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
//        imageUP.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        addSubview(labelUP)
//        labelUP.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
//        labelUP.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
//        labelUP.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
       
        
        
    }
    
   
}
