//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Gleb Belanov on 21.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorTracker: UIView!
  
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
   
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        colorTracker.layer.cornerRadius = 10
        
    }

    
    @IBAction func redSliderAction() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        colorTracker.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                               green: CGFloat(greenSlider.value),
                                               blue: CGFloat(blueSlider.value),
                                               alpha: CGFloat(redSlider.value))
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        colorTracker.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                               green: CGFloat(greenSlider.value),
                                               blue: CGFloat(blueSlider.value),
                                               alpha: CGFloat(greenSlider.value))
   }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        colorTracker.backgroundColor = blueSlider.minimumTrackTintColor
        colorTracker.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                               green: CGFloat(greenSlider.value),
                                               blue: CGFloat(blueSlider.value),
                                               alpha: CGFloat(blueSlider.value))
    }
}

