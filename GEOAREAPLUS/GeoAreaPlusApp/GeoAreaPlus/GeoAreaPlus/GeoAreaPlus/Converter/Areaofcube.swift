//
//  Areaofcube.swift
//  GeoAreaPlus
//
//  Created by Manish Bhanushali on 24/10/23.
//

import UIKit

class Areaofcube: UIViewController {

    @IBOutlet weak var conbtn: UIButton!
    
    @IBOutlet weak var txtdeta: UITextView!
    
    
    
    
    @IBOutlet weak var sideLengthTextField: UITextField!
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
            navigationItem.title = "Area Of Cube"
        }

        @IBAction func calculateCube(_ sender: UIButton) {
            if let sideLengthText = sideLengthTextField.text, let sideLength = Double(sideLengthText) {
                // Calculate the surface area and volume
                let surfaceArea = 6 * sideLength * sideLength
                let volume = sideLength * sideLength * sideLength
                
                surfaceAreaLabel.text = "Surface Area: \(surfaceArea)"
                volumeLabel.text = "Volume: \(volume)"
            } else {
                surfaceAreaLabel.text = "Please enter a valid side length value."
                volumeLabel.text = ""
            }
        }
    }
