//
//  ChatDrawView.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 18.01.2021.
//

import UIKit
//@IBDesignable - применяется к классам
@IBDesignable
class ChatDrawView: UIView {
    //создадим свойство нашего UIView
    
    //мы хотим управлять нашим радиусом и задавать ему новые значения, справа в attribute inspector будут задаваться новые значения,  панель справа
    @IBInspectable
    var radius: CGFloat = 20 {
        didSet {
            //при изменении значения радиуса нужно вызывать
            //функцию setNeedsLayout, чтобы просто обновить дизайн
            setNeedsLayout()
        }
    }
    

    

    override func draw(_ rect: CGRect) {
        // Drawing code
        
        //необходимо получить контекст для рисования (куда рисовать)
        guard let context = UIGraphicsGetCurrentContext() else {return}
        
//        context.fill(CGRect(x: 0, y: 0, width: 50, height: 50))
        
        
//        let width = rect.width
//        let height = rect.height
//
//        let path = UIBezierPath()
//        path.move(to: CGPoint(x: width * 1/2, y: height * 1/2))
//        // идем в правый угол
//        path.addLine(to: CGPoint(x: width * 0.75, y: height * 0.75))
//        // рисуем линию влево
//        path.addLine(to: CGPoint(x: width * 0.26, y: height * 0.75))
//        //хватит рисовать, закрываем нашу фигуру
//        path.close()
//        //заполняем фигуру цветом
//        path.fill()
        
        
        // рисуем круг, ставим его по центру
        context.fillEllipse(in: CGRect(x: rect.midX - radius, y: rect.midY - radius, width: radius * 2, height: radius * 2))
        
        
    }
    
}


