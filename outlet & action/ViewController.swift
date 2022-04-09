//
//  ViewController.swift
//  outlet & action
//
//  Created by Meng Chieh Chiang on 4/7/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var redColor: UISlider!
    @IBOutlet weak var greenColor: UISlider!
    @IBOutlet weak var blueColor: UISlider!
    @IBOutlet weak var alphaColor: UISlider!
    @IBOutlet weak var randomButton: UIButton!
    @IBOutlet weak var gradientColor: UISlider!
    
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var alphaSwitch: UISwitch!
    @IBOutlet weak var gradientSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 30
        imageView.layer.shadowOpacity = 1
        
        
    }
    

    @IBAction func changeColor(_ sender: Any) {
        imageView.backgroundColor = UIColor(
            red:CGFloat(redColor.value),
            green:CGFloat(greenColor.value),
            blue:CGFloat(blueColor.value),
            alpha: CGFloat(alphaColor.value)
        )
    }
    
    @IBAction func randomAction(_ sender: Any) {
        redColor.value = Float.random(in: 0...1)
        greenColor.value = Float.random(in: 0...1)
        blueColor.value = Float.random(in: 0...1)
        alphaColor.value = Float.random(in: 0...1)
        imageView.backgroundColor = UIColor(
            red:CGFloat(redColor.value),
            green:CGFloat(greenColor.value),
            blue:CGFloat(blueColor.value),
            alpha: CGFloat(alphaColor.value))
    }
    @IBAction func colorSwitch(_ sender: Any) {
        if redSwitch.isOn{
        redColor.isEnabled = true
        }else{
        redColor.isEnabled = false
        }
        if greenSwitch.isOn{
        greenColor.isEnabled = true
        }else{
        greenColor.isEnabled = false
        }
        if blueSwitch.isOn{
        blueColor.isEnabled = true
        }else{
        blueColor.isEnabled = false
        }
        
        if gradientSwitch.isOn{
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        redColor.isEnabled = false
        blueColor.isEnabled = false
        greenColor.isEnabled = false
        imageView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        }
    }
    
    @IBAction func gradientAction(_ sender: Any) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.blue.cgColor ,UIColor.white.cgColor]
        gradientLayer.frame = gradientView.bounds
        gradientLayer.locations = [0,NSNumber(value: gradientColor.value),]
        gradientView.layer.addSublayer(gradientLayer)
        
    }
    
    
}

