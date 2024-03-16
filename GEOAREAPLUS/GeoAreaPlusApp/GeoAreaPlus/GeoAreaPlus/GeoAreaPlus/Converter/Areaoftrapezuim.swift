//
//  Areaoftrapezuim.swift
//  GeoAreaPlus
//
//  Created by Manish Bhanushali on 24/10/23.
//

import UIKit

class Areaoftrapezuim: UIViewController {
    
    @IBOutlet weak var conbtn: UIButton!
    
    
    @IBOutlet weak var txtdeta: UITextView!
    

    @IBOutlet weak var base1TextField: UITextField!
       @IBOutlet weak var base2TextField: UITextField!
       @IBOutlet weak var heightTextField: UITextField!
       @IBOutlet weak var areaLabel: UILabel!

       override func viewDidLoad() {
           super.viewDidLoad()
           
           conbtn.layer.cornerRadius = 30
           conbtn.layer.borderWidth = 4
           conbtn.layer.borderColor = UIColor.black.cgColor
           txtdeta.layer.borderColor = UIColor.black.cgColor
           txtdeta.layer.borderWidth = 4
           txtdeta.layer.cornerRadius = 20
           navigationItem.title = "Area Of Trapezuim"
       }

       @IBAction func calculateTrapezium(_ sender: UIButton) {
           if let base1Text = base1TextField.text, let base2Text = base2TextField.text, let heightText = heightTextField.text,
               let base1 = Double(base1Text), let base2 = Double(base2Text), let height = Double(heightText) {
               
               // Calculate the area of the trapezium
               let area = 0.5 * (base1 + base2) * height
               areaLabel.text = "Area: \(area)"
           } else {
               areaLabel.text = "Please enter valid base and height values."
           }
       }
   }
