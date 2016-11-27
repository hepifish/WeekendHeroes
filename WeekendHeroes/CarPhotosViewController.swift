//
//  CarCollectionViewController.swift
//  weekendHeroes
//
//  Created by Admin on 02/11/2016.
//  Copyright © 2016 hpf. All rights reserved.
//

import UIKit

final class CarPhotosViewController: UICollectionViewController {
    
    let reuseIdentifier = "CarCell"
    let CELL_WIDTH : CGFloat = 488
    let CELL_HEIGHT : CGFloat = 275
    let sectionInsets = UIEdgeInsets(top: 40.0, left: 14.0, bottom: 20.0, right: 14.0)
    let itemsPerRow: CGFloat = 2
    var items = ["k101_close.jpg", "550_maranello.jpg", "365_gt16-9.jpg", "ariston.jpg", "speedster_mobile.jpg", "m1_front_0.jpg"]
    
    func photoForIndexPath(_ indexPath: IndexPath) -> UIImage? {
        let image = UIImage(named: items[indexPath.row])
        return image!
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CarPhotoCell
        cell.imageView.image = photoForIndexPath(indexPath)
        cell.backgroundColor = UIColor.black
        if(collectionView.frame.width > 1024){
            cell.imageView.frame = CGRect(x: 0, y: 0, width: 660, height: 371)
        }else{
            cell.imageView.frame = CGRect(x: 0, y: 0, width: CELL_WIDTH, height: CELL_HEIGHT)
        }
        return cell
    }
}

extension CarPhotosViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var size = CGSize()
        if collectionView.frame.width > 1024{
            print(collectionView.frame.width)
            size = CGSize(width: 660, height: 371)
        }else{
            size = CGSize(width: CELL_WIDTH, height: CELL_HEIGHT)

        }
        
        return size
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


