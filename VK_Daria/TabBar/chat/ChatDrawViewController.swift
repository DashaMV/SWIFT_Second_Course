//
//  ChatDrawViewController.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 18.01.2021.
//

import UIKit

class ChatDrawViewController: UIViewController {

    @IBOutlet weak var pinkView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        //добавим наш кастомный ChatDrawUIView
//        let chatView = ChatDrawView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        
        //обратимся к  superView (self.view или просто view)
//       chatView.backgroundColor = .systemPink
//        view.addSubview(chatView)
        
        //играем со слоями,
        //скруглим углы
        //половина ширины фрейма - это круг
        pinkView.layer.cornerRadius = pinkView.frame.width / 2
        //добавим тени, голубая тень
        pinkView.layer.shadowColor = UIColor.blue.cgColor
        //смещение тени
        pinkView.layer.shadowOffset = CGSize(width: 10, height: 10)
        //радиус тени
        pinkView.layer.shadowRadius = 20
        //просвечивание тени
        pinkView.layer.shadowOpacity = 0.5
        
        let tapGesture = UIGestureRecognizer(target: self, action: #selector(didDoubleTouchPinkView))
        pinkView.addGestureRecognizer(tapGesture)
        pinkView.isUserInteractionEnabled = true
    }
    
    @objc func didDoubleTouchPinkView(_ sender: UIGestureRecognizer) {
        //выведем функцию, которая отрабатывает данный жест
        print(#function)
    }
    

}
