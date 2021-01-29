//
//  VKCollectionViewCell.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 10.01.2021.
//

import UIKit

class VKCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var LikeLabel: UILabel!
    
    @IBOutlet weak var lastSeenLabel: UILabel!
    @IBOutlet weak var vkImage: UIImageView!
    
    @IBOutlet weak var statusLabel: UILabel!
    
   
    @IBOutlet weak var LikesUIControl: LikesUIControl!
    @IBOutlet weak var LikesCounter: UILabel!
   
    

   

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        LikesCounter.text = "0"
    //играем со слоями,
    //скруглим углы
    //половина ширины фрейма - это круг
    vkImage.layer.cornerRadius = vkImage.frame.width / 2
    //добавим тени, голубая тень
    vkImage.layer.shadowColor = UIColor.blue.cgColor
    //смещение тени
    vkImage.layer.shadowOffset = CGSize(width: 100, height: 100)
    //радиус тени
    vkImage.layer.shadowRadius = 100
    //просвечивание тени
    vkImage.layer.shadowOpacity = 0.5
    
    }
    @IBAction func tapOnLike(_ sender: LikesUIControl) {
        let tappedLike = LikesUIControl.liked
        if tappedLike {
            LikesCounter.text = "1"
            LikesCounter.textColor = .red
        }else{
            LikesCounter.textColor = .black
            LikesCounter.text = "0"
        }
    }
}
