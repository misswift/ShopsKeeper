//
//  HomeHorizontalController.swift
//  ShopsKeeper
//
//  Created by Халим Магомедов on 25.08.2021.
//

import UIKit


class HomeHorizontalController: BaseListViewController, UICollectionViewDelegateFlowLayout {
    
    let cellID = "cellID"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .purple
        collectionView.register(HomeRowCell.self, forCellWithReuseIdentifier: cellID)
        
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        return cell
    }
    
    let lineSpacing:CGFloat = 10
    let topBottonPadding: CGFloat = 12
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return lineSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = (view.frame.height - 2*topBottonPadding - 2*lineSpacing)
        let width = (view.frame.width - 2*topBottonPadding - 2*lineSpacing)/2
        return .init(width: width-16, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: topBottonPadding, left: 16, bottom: topBottonPadding, right: 16)
    }
}
