//
//  LikesUIControl.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 20.01.2021.
//

import UIKit

class LikesUIControl: UIControl {

    private var likeButton: UIButton!
    
    var liked: Bool = false {
            didSet {
                sendActions(for: .valueChanged)
            }
        }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        //fatalError("init(coder:) has not been implemented")
        super.init(coder: coder)
        setupUI()
    }


    private func setupUI() {
        likeButton = UIButton(type: UIButton.ButtonType.system)
        likeButton.tintColor = .black
        likeButton.setBackgroundImage(UIImage(systemName: "suit.heart"), for: .normal)
        likeButton.addTarget(self, action: #selector(checkLike), for: .touchUpInside)
        addSubview(likeButton)
     
    }
    
    @objc func checkLike(){
        print(#function)
        if likeButton.backgroundImage(for: .normal) == UIImage(systemName: "suit.heart") {
            likeButton.tintColor = .red
            likeButton.setBackgroundImage(UIImage(systemName: "suit.heart.fill"), for: .normal)
            liked = true
        }else{
            likeButton.tintColor = .black
            likeButton.setBackgroundImage(UIImage(systemName: "suit.heart"), for: .normal)
            liked = false
        }
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        likeButton.frame = bounds
    }

}


