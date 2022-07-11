//
//  ResultViewController.swift
//  BMI calculator
//
//  Created by Adinay on 30/6/22.
//

import UIKit

class ResultViewController: UIViewController {
    
   
    @IBOutlet weak var growthLabel: UILabel!
    
    @IBOutlet weak var weigthLabel: UILabel!
    
    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var TitleLabel: UILabel!
    
    
    var weightType: BmiCalculator?
    
    var weigth = 100
    var growth = 99
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        weigthLabel.text = "\(weigth) кг"
        growthLabel.text = "\(growth) см"
        
        funcdBMI()
        
        initialSetUp()
        
        
    }
    
    func funcdBMI(){
        let result = Float(weigth) / pow(Float(growth)/100, 2)
        switch result {
        case 16:
            weightType = .plus
        case 16..<22.22 :
            weightType = .minus
        case 22.22..<27:
            weightType = .times
        case 27...35:
            weightType = .answer
        case 35...44:
            weightType = .digit
        case 44...54:
            weightType = .point
        case 54...65:
            weightType = .division
        case 65:
            weightType = .percent
        default:
            print("plus")
        }
        
        
    }
    
    func  initialSetUp() {
        if let height = weightType {
            TitleLabel.text = height.title
            discriptionLabel.text = height.SubTitle
        }
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        navigationController?.popViewController(animated: true) // popViewController возращает на один шаг назад
    }
    
            
}
