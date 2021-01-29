//
//  CustomAvatarUIImageView.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 16.01.2021.
//

import UIKit

class CustomAvatarUIImageView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = frame.height / 2

    }
}
    
class CustomFriendAvatarUIImageView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = 30

    }
}

    
    class ShadowAvatarImageView: UIImageView {
        
        override func layoutSubviews() {
            super.layoutSubviews()
         
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOffset = CGSize.zero
            layer.shadowRadius = 5
            layer.shadowOpacity = 0.8
            layer.masksToBounds = false
            layer.cornerRadius = frame.height / 2
        
    }
}


