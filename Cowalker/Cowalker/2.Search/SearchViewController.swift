//
//  SearchViewController.swift
//  Cowalker
//
//  Created by 조예원 on 2018. 7. 1..
//  Copyright © 2018년 조예원. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    // 임이 데이터
    let imageArray = [#imageLiteral(resourceName: "iconsTabbar1Home"), #imageLiteral(resourceName: "iconsTabbar1Home"), #imageLiteral(resourceName: "iconsTabbar1Home"), #imageLiteral(resourceName: "iconsTabbar1Home"), #imageLiteral(resourceName: "iconsTabbar1Home"), #imageLiteral(resourceName: "iconsTabbar1Home")]
    let text = ["1", "2", "3", "4","1", "2", "3", "4", "1", "2", "3", "4"]
    
    @IBOutlet weak var projectCollectionView: UICollectionView!
    
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "projectCollectionViewCell", for: indexPath) as! projectCollectionViewCell
        
        cell.imgView.image = imageArray[indexPath.row]
        cell.labelText1.text = text[indexPath.row]
        cell.labelText2.text = text[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width:120*self.view.frame.height/375   , height: 100*self.view.frame.height/667  )
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }


    
    
}
