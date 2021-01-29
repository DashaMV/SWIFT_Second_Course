//
//  GradientView.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 19.01.2021.
//

import UIKit
@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1) {
        didSet {
            setNeedsLayout()
        }
    }
   
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1) {
        didSet {
            setNeedsLayout()
        }
    }
    
    override func draw(_ rect: CGRect) {
        let gradientLayer = CAGradientLayer()
        //задаем очередность цветов для градиента
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        //теперь говорим, где градиент начинает отрисовываться, зададим точку начала
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        //нижняя правая точка
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        //границы дочернего равны родительским
        gradientLayer.frame = bounds
        //добавляем подслой
        layer.insertSublayer(gradientLayer, at: 0)
    }
        
}
