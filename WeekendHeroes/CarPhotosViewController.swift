//
//  CarCollectionViewController.swift
//  weekendHeroes
//
//  Created by Admin on 02/11/2016.
//  Copyright © 2016 hpf. All rights reserved.
//

import UIKit

final class CarPhotosViewController: UICollectionViewController {
    
    let reuseIdentifier = "CarCell" // also enter this string as the cell identifier in the storyboard
    let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    let itemsPerRow: CGFloat = 3
    var items = ["alfasud-2_0.jpg", "alfasud-2_0.jpg", "alfasud-2_0.jpg", "alfasud-2_0.jpg", "alfasud-2_0.jpg"]
}

private extension CarPhotosViewController {
    func photoForIndexPath(_ indexPath: IndexPath) -> UIImage? {
        let image = UIImage(named: items[indexPath.row])
        return image!
    }
}

// MARK: - UICollectionViewDataSource
extension CarPhotosViewController {
    override func collectionView(_ collectionView: UICollectionView,
                                 numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath : IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CarPhotoCell
        if let carPhoto = photoForIndexPath(indexPath){
            cell.imageView.image = carPhoto
        }
        cell.backgroundColor = UIColor.black
        return cell;
    }
}

extension CarPhotosViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                               insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
}
