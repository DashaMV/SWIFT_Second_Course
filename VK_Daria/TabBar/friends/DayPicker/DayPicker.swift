//
//  DayPicker.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 19.01.2021.
//

import UIKit

class DayPicker: UIControl {
    //делаем 7 кнопочек с названием дней недели и пользователь будет их тапать
    private var buttons: [UIButton] = []
    private var stackView: UIStackView!
    
    var selectedDay: Days? = nil {
        didSet {
            updateSelectedDay()
            //sendAction - уведомляем наш UIView о том, что мы что-то сделали
            //обновим UI
            sendActions(for: .valueChanged)
        }
    }
    
     //опишем 2 инициализатора
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    //вызовем функцию
        setupUI()
    }
    
    //если мы вощли сюда во время работы приложения - значит что-от пошло не так, сюда нельзя заходить
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //вызовем функцию, которая будетбрать наши кнопки и добавлять их в StackView
    private func setupUI () {
        for day in Days.allCases {
            //для каждого дня создаем отдельную кнопку, обычную системную кнопку
            let button = UIButton(type: UIButton.ButtonType.system)
            //зададим параметры нашей кнопки, title - в нашем случае - это "ПН"
            //state .normal - состояние, когда кнопка не нажата
            button.setTitle(day.title, for: .normal)
            //зададим цвет, мы на нее не нажали - она светлосерая
            button.setTitleColor(.lightGray, for: .normal)
            //нажали на кнопку - поменяли цвет текста
            button.setTitleColor(.white, for: .selected)
            //что должно вызываться при нажатии на кнопку
            //touchUpInside - нажал-отпустил
            button.addTarget(self, action: #selector(selectDay), for: .touchUpInside)
            //говорим массиву кнопок, чтобы он принял новую кнопку
            //append - добавить
            buttons.append(button)
        }
        
        //записали массив - теперь передадим его в StackView
        //наши кнопки - это и есть массив наших uiview buttons
        stackView = UIStackView(arrangedSubviews: buttons)
        //добавим в нашу вьюшку StackView
        addSubview(stackView)
        
        //будем конфигурировать наш StackView
        stackView.axis = .horizontal
        stackView.spacing = 8
        //выравниваем по центру
        stackView.alignment = .center
        stackView.distribution = .fillEqually
    }
    
    @objc func selectDay(_ sender: UIButton) {
        //пользователь нажал на кнопку и что-то должно произойти
        print(#function)
        //покажем, какой день мы выбрали - зададим переменную нашему selectDay
        //получим индекс кнопки, которая была нажата, а потом по этому индексу обратиться к перечислению Days и получить Day, передадим selectDay новое значение
        
        //верни нам из баттнс первый индекс сендера, sender - кнопка из массива buttons
        guard let index = buttons.firstIndex(of: sender),
              //получив индекс, можем получить выбранный день
              let day = Days(rawValue: index)
        else {return}
        //говорим userInterface - был выбран день - обновись, перерисуйся
        selectedDay = day
    
    }
    
    private func updateSelectedDay() {
        //получим индекс данной кнопки
        for (index, button) in buttons.enumerated() {
            guard let day = Days(rawValue: index) else {return}
            //если выбран нужный нам день - кнопка будет иметь статус sele ted
            button.isSelected = day == selectedDay
            
            //или через if
            
//            if day == selectedDay {
//                button.isSelected = true
//            }
            
            
            
        }
    }
    
    //обновим UI
    override func layoutSubviews() {
        super.layoutSubviews()
        
        stackView.frame = bounds
    }
}
