// Created on: September-2018
// Created by: Ethan Bellem
// Created for: ICS3U
// This program does basic math, using UIKit
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionsLabel : UILabel = UILabel()
    let radius : UILabel = UILabel()
    let circumfrence : UILabel = UILabel()
    let radiusTextField : UITextField = UITextField()
    let calculateButton : UIButton = UIButton()
    let PI: Float = 3.14
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.274509817361832, green: 0.486274510622025, blue: 0.141176477074623, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Enter length and width to calculate area and perimeter "
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        radius.text = "Enter Length: "
        view.addSubview(radius)
        radius.translatesAutoresizingMaskIntoConstraints = false
        radius.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20).isActive = true
        radius.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        
        radiusTextField.borderStyle = UITextBorderStyle.roundedRect
        radiusTextField.placeholder = "    cm"
        view.addSubview(radiusTextField)
        radiusTextField.translatesAutoresizingMaskIntoConstraints = false
        radiusTextField.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20).isActive = true
        radiusTextField.leadingAnchor.constraint(equalTo: radius.trailingAnchor, constant: 10).isActive = true
        
        
        calculateButton.setTitle("Calcuate", for: UIControlState.normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.addTarget(self, action: #selector(calculateCircumfrence), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        calculateButton.topAnchor.constraint(equalTo: radiusTextField.bottomAnchor, constant: 25).isActive = true
        
        //circumference .text = "test"
        view.addSubview(circumfrence)
        circumfrence.translatesAutoresizingMaskIntoConstraints = false
        circumfrence.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20).isActive = true
        circumfrence.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    
    @objc func calculateCircumfrence() {
        // calculate and show circumference 
        let radiusNum : Float = Float(Int(radiusTextField.text!)!)
        
        let circumfrenceNum = radiusNum * (PI * 2) 
        
        circumfrence.text = "The circumference is \(circumfrenceNum)"
        
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
