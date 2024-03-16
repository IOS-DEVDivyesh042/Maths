//
//  AreaofCircle.swift
//  GeoAreaPlus
//
//  Created by Manish Bhanushali on 24/10/23.
//

import UIKit

class AreaofCircle: UIViewController {

   
    @IBOutlet weak var convbtn: UIButton!
    @IBOutlet weak var radiusTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    @IBOutlet weak var textd: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        convbtn.layer.cornerRadius = 30
        convbtn.layer.borderWidth = 4
        convbtn.layer.borderColor = UIColor.black.cgColor
        textd.layer.cornerRadius = 20
        textd.layer.borderColor = UIColor.black.cgColor
        textd.layer.borderWidth = 4
        navigationItem.title = "Area Of Circle"
    }

    @IBAction func calculateArea(_ sender: Any) {
        if let radiusText = radiusTextField.text, let radius = Double(radiusText) {
            let area = Double.pi * pow(radius, 2)
            resultLabel.text = "Area: \(area)"
        } else {
            resultLabel.text = "Invalid input"
        }
    }
}
