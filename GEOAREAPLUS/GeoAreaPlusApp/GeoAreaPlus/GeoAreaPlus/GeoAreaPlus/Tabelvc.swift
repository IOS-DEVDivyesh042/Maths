//
//  Tabelvc.swift
//  GeoAreaPlus
//
//  Created by Manish Bhanushali on 24/10/23.
//

import UIKit

class Tabelvc: UITableViewCell {

    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var cellimg: UIImageView!
    
    @IBOutlet weak var crllbl: UILabel!
    
    
    @IBOutlet weak var underview: UIView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        view1.layer.borderColor = UIColor.black.cgColor
        view1.layer.cornerRadius = 20
        view1.layer.borderWidth = 5
        
        underview.layer.cornerRadius = 20
        underview.layer.borderColor = UIColor.purple.cgColor
        underview.layer.borderWidth = 5
        
        crllbl.layer.cornerRadius = 15
        crllbl.layer.borderWidth = 8
        crllbl.layer.borderColor = UIColor.black.cgColor
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
