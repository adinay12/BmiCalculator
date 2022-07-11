//
//  BmiCalculator.swift
//  BMI calculator
//
//  Created by Adinay on 4/7/22.
//

import Foundation

enum BmiCalculator {
    case plus
    case minus
    case times
    case division
    case answer
    case digit
    case point
    case percent
    
    
    var title: String {
        switch self {
        case .plus:
            return "Ниже среднего"
        case .minus:
            return "Средний"
        case .times:
            return "Выше среднего"
        case .division:
            return "Солнечно"
        case .answer:
            return "Дождливо"
        case .digit:
            return "Ветренно"
        case .point:
            return "Море"
        case .percent:
            return "Отдых"
       
        }
    }
    
    var SubTitle: String {
        switch self {
        case .plus:
            return "Надо похудеть"
        case .minus:
            return "Надо сбросить вес,до лета"
        case .times:
            return "Вам надо больше двигаться"
        case .division:
            return "Делит"
        case .answer:
            return "Ответ"
        case .digit:
            return "Цифры"
        case .point:
            return "Точка"
        case .percent:
            return " вычисление процентов"
       
        }
    }
}



