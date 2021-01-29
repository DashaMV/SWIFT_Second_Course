//
//  Days.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 19.01.2021.
//

import Foundation

//создадим перечисление дней, с которым будем дальше работать

enum Days: Int, CaseIterable {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
    
    //добавим параметр, через который будем получать строковое значение наших элементов
    
    var title: String {
        switch self {
        case .monday:
            return "ПН"
        case .tuesday:
            return "ВТ"
        case .wednesday:
            return "СР"
        case .thursday:
            return "ЧТ"
        case .friday:
            return "ПТ"
        case .saturday:
            return "СБ"
        case .sunday:
            return "ВС"
        
        }
    }
    
}
