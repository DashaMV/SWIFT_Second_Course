//
//  VKCollectionViewController.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 10.01.2021.
//

import UIKit


class VKCollectionViewController: UICollectionViewController {

    
    

    var friends: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
  

    }


    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? VKCollectionViewCell {
            //cell.lastSeenLabel.text = "\(indexPath.row + 1)"
            //cell.statusLabel.text = "\(25 + indexPath.row)"
            cell.vkImage.image = UIImage(named: "anime_avatar_1")
            //cell.vkImage.image = UIImage(named: "anime_avatar_2")
            //UIImage(systemName: "sdsds")
            //systemName
            
            return cell
        }
        
       
        return UICollectionViewCell()
    }
}
