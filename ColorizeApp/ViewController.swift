//
//  ViewController.swift
//  ColorizeApp
//
//  Created by Mikhail Tabakaev on 2/27/24.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redViewValueLable: UILabel!
    @IBOutlet var greenViewValueLable: UILabel!
    @IBOutlet var blueViewValueLable: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        
        setColour()
        
        redViewValueLable.text = string(from: redSlider)
        greenViewValueLable.text = string(from: greenSlider)
        blueViewValueLable.text = string(from: blueSlider)
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        setColour()
        
        switch sender {
        case redSlider:
            redViewValueLable.text = string(from: redSlider)
        case greenSlider:
            greenViewValueLable.text = string(from: greenSlider)
        default:
            blueViewValueLable.text = string(from: blueSlider)
        }
    }
    
    private func setColour() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}


