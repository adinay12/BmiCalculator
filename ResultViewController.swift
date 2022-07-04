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
        
        self.title = "Результаты"
        
        
        weigthLabel.text = "\(weigth) см"
        growthLabel.text = "\(growth) кг"

        
     initialSetUp()
        funcdBMI()
        
        }
    
    func funcdBMI(){
           let result = Float(weigth) / pow(Float(growth)/100, 2)
       
        if result < 16 {
            weightType = .plus
        }
        if result > 16 && result < 22.22 {
            weightType = .minus
        }
        if result > 22.22 && result < 27 {
            weightType = .times
        }
        if result > 28 && result < 35 {
            weightType = .answer
        }
        if result > 35 && result < 44 {
            weightType = .digit
        }
        if result > 44 && result < 54 {
            weightType = .point
        }
        if result > 54 && result < 65 {
            weightType = .division
        }
        if result > 65  {
            weightType = .percent
        }
        
    }
    
    func  initialSetUp() {
        if let height = weightType {
            TitleLabel.text = title
            discriptionLabel.text = height.SubTitle
        }
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        navigationController?.popViewController(animated: true) // popViewController возращает на один шаг назад
    }
    
            
}
