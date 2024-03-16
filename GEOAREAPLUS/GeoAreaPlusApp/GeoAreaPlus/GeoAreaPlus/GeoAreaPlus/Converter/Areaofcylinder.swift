//
//  Areaofcylinder.swift
//  GeoAreaPlus
//
//  Created by Manish Bhanushali on 24/10/23.
//

import UIKit

class Areaofcylinder: UIViewController {

    @IBOutlet weak var convbtn: UIButton!
    
    @IBOutlet weak var txtdet: UITextView!
    
    
    
    
    @IBOutlet weak var radiusTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var surfaceAreaLabel: UILabel!
    @IBOutlet weak var volumeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        convbtn.layer.cornerRadius = 30
        convbtn.layer.borderWidth = 4
        convbtn.layer.borderColor = UIColor.black.cgColor
        txtdet.layer.borderWidth = 20
        txtdet.layer.borderColor = UIColor.black.cgColor
        txtdet.layer.borderWidth = 4
        
        navigationItem.title = "Area Of Cylinder"
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






