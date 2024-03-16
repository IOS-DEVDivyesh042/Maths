//
//  Areaoftriangle.swift
//  GeoAreaPlus
//
//  Created by Manish Bhanushali on 24/10/23.
//

import UIKit

class Areaoftriangle: UIViewController {
    @IBOutlet weak var convbtn: UIButton!
    
    
    
    @IBOutlet weak var txtdeta: UITextView!
    
    
    
    @IBOutlet weak var baseTextField: UITextField!
        @IBOutlet weak var heightTextField: UITextField!
        @IBOutlet weak var resultLabel: UILabel!

        override func viewDidLoad() {
            super.viewDidLoad()
            convbtn.layer.cornerRadius = 30
            convbtn.layer.borderWidth = 4
            convbtn.layer.borderColor = UIColor.black.cgColor
            txtdeta.layer.cornerRadius = 20
            txtdeta.layer.borderColor = UIColor.black.cgColor
            txtdeta.layer.borderWidth = 4
            
            navigationItem.title = "Area Of Triangle"
        }
        
        @IBAction func calculateArea(_ sender: UIButton) {
            if let baseText = baseTextField.text, let heightText = heightTextField.text,
                let base = Double(baseText), let height = Double(heightText) {
                
                let area = (0.5) * base * height
                resultLabel.text = "Area: \(area)"
            } else {
                resultLabel.text = "Please enter valid base and height values."
            }
        }
    }   
