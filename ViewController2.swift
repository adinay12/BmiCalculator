//
//  ViewController2.swift
//  BMI calculator
//
//  Created by Adinay on 3/7/22.
// growth рост .weight вес

//import UIKit
//
//
//class ViewController2: UIViewController {
//
//    @IBOutlet weak var weightSlider: UISlider!
//    @IBOutlet weak var growthSlider: UISlider!
//
//
//    @IBOutlet weak var growthLabel: UILabel!
//
//
//    var weigth:Int = 99
//    var growth: Int = 00
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//    }
//    @IBAction func weightSliderValue(_ sender: UISlider) {
//
//    }
//
//
//    @IBAction func growthSliderValue(_ sender: UISlider) {
//
//        growth = Int(sender.value)
//
//
//        self.performSegue(withIdentifier: "Result", sender: self)
//
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let Vc = segue.destination as! ResultViewController
//
//
//    }
//
//}
