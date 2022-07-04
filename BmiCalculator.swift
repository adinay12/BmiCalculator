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
            return "Привет"
        case .minus:
            return "Как дела"
        case .times:
            return "Пасмурно"
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
        default:
            print("Нечего")
        }
    }
    
    var SubTitle: String {
        switch self {
        case .plus:
            return "Прибовляет"
        case .minus:
            return "Вычисляет"
        case .times:
            return "Умножает"
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
        default:
            print("Делать")
        }
    }
}
