//
//  HomeHorizontalController.swift
//  ShopsKeeper
//
//  Created by Халим Магомедов on 25.08.2021.
//

import UIKit


class HomeHorizontalController: BaseListViewController {
    
    let cellID = "cellID"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .purple
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellID)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}
