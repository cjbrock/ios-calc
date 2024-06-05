//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculator = Calculator()

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let roundedValue = String(round(sender.value * 100)/100.0)
        heightLabel.text = "\(roundedValue)m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let roundedValue = String(Int(sender.value))
        weightLabel.text = "\(roundedValue)Kg"
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculator.calculateBMI(height, weight)
        
        
        self.performSegue(withIdentifier: "goToResults", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let dvc = segue.destination as! ResultsViewController
            dvc.bmi = calculator.getBMI()
        }
    }
}

