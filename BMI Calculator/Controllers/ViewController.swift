//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
//      print(String(format: "%.2f", sender.value))
        let heightValue = (100*sender.value).rounded()/100
        heightLabel.text = String(heightValue) + "m"
        // ou heightLabel.text = "\(String(heightValue))m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weightValue = Int(sender.value)
        weightLabel.text = String(weightValue) + "Kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
//        let imc = weight / (height * height) mesma coisa da linha abaixo
        let imc = weight / pow(height, 2)
        print(imc)
    }
}

