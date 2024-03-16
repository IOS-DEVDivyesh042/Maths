//
//  Areaofrectangle.swift
//  GeoAreaPlus
//
//  Created by Manish Bhanushali on 24/10/23.
//

import UIKit

class Areaofrectangle: UIViewController {

    
    @IBOutlet weak var convbtn: UIButton!
    
    
    @IBOutlet weak var txtdet: UITextView!
    
    @IBOutlet weak var lengthTextField: UITextField!
       @IBOutlet weak var widthTextField: UITextField!
       @IBOutlet weak var resultLabel: UILabel!

       override func viewDidLoad() {
           super.viewDidLoad()
           
           convbtn.layer.cornerRadius = 30
           convbtn.layer.borderWidth = 4
           convbtn.layer.borderColor = UIColor.black.cgColor
           txtdet.layer.cornerRadius = 20
           txtdet.layer.borderColor = UIColor.black.cgColor
           txtdet.layer.borderWidth = 4
           navigationItem.title = "Area Of Rectangle"
       }

       @IBAction func calculateArea(_ sender: UIButton) {
           if let lengthText = lengthTextField.text, let widthText = widthTextField.text,
               let length = Double(lengthText), let width = Double(widthText) {
               
               let area = length * width
               resultLabel.text = "Area: \(area)"
           } else {
               resultLabel.text = "Please enter valid length and width values."
           }
       }
   }
