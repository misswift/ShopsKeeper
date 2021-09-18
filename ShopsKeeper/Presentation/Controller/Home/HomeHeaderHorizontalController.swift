//
//  HomeHeaderHorizontalController.swift
//  ShopsKeeper
//
//  Created by Халим Магомедов on 13.09.2021.
//

import UIKit

class HomeHeaderHorizontalController: BaseListViewController, UICollectionViewDelegateFlowLayout {
    
    let cellID = "cellId"
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(HomeHeaderCell.self, forCellWithReuseIdentifier: cellID)
        if let layout  = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        .init(width: view.frame.width, height: view.frame.height)
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
       
        return cell
    }
}
