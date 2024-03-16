//
//  Areaofsphere.swift
//  GeoAreaPlus
//
//  Created by Manish Bhanushali on 24/10/23.
//

import UIKit

class Areaofsphere: UIViewController {
    
    @IBOutlet weak var conbtn: UIButton!
    
    @IBOutlet weak var txtdeta: UITextView!
    
    

    @IBOutlet weak var radiusTextField: UITextField!
        @IBOutlet weak var heightTextField: UITextField!
        @IBOutlet weak var surfaceAreaLabel: UILabel!
        @IBOutlet weak var volumeLabel: UILabel!

        override func viewDidLoad() {
            super.viewDidLoad()
            
            conbtn.layer.cornerRadius = 30
            conbtn.layer.borderWidth = 4
            conbtn.layer.borderColor = UIColor.black.cgColor
            txtdeta.layer.cornerRadius = 20
            txtdeta.layer.borderColor = UIColor.black.cgColor
            txtdeta.layer.borderWidth = 4
            navigationItem.title = "Area Of Sphere"
        }

        @IBAction func calculateCylinder(_ sender: UIButton) {
            if let radiusText = radiusTextField.text, let heightText = heightTextField.text,
                let radius = Double(radiusText), let height = Double(heightText) {
                
                // Calculate the surface area and volume
                let surfaceArea = 2 * .pi * radius * (radius + height)
                let volume = .pi * radius * radius * height
                
                surfaceAreaLabel.text = "Surface Area: \(surfaceArea)"
                volumeLabel.text = "Volume: \(volume)"
            } else {
                surfaceAreaLabel.text = "Please enter valid radius and height values."
                volumeLabel.text = ""
            }
        }
    }
