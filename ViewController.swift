//
//  ViewController.swift
//  BMI calculator
//
//  Created by Adinay on 30/6/22.
// growth рост .weight вес

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var growthSlider: UISlider!
    @IBOutlet weak var weghtLabel: UILabel!
    @IBOutlet weak var growthLabel: UILabel!

    
   
    var weightModel: BmiCalculator = .minus
    
    var weight: Int = 50
    var growth: Int = 150
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func weightSliderValue(_ sender: UISlider) {
        
        weight = Int(sender.value)
               
        weghtLabel.text = "\(weight) кг"
        
    }


    @IBAction func growthSliderValue(_ sender: UISlider) {
        
        
        growth = Int(sender.value)
        
        growthLabel.text = "\(growth) см"
        
    }



    @IBAction func result(_ sender: UIButton) {

        self.performSegue(withIdentifier: "Result", sender: self)

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVc = segue.destination as! ResultViewController
        
        
        
        destinationVc.weigth = weight
        destinationVc.growth = growth
        
        destinationVc.weightType = self.weightModel
     
    }

}
