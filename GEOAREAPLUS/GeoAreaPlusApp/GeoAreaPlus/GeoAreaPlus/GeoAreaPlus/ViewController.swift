//
//  ViewController.swift
//  GeoAreaPlus
//
//  Created by Manish Bhanushali on 24/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tblview: UITableView!
    
    var dataimg = ["Circle","Cube","Cylinder",
                   "Rectanglr",
                   "Sphere",
                   "Trapexuim",
                   "Triangle"]
    
  //  @IBOutlet weak var tblview: UITableView!
    
    

    @IBOutlet weak var underview1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // underview1.layer.cornerRadius = 20
        
        tblview.dataSource = self
        tblview.delegate = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataimg.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Tabelvc
        cell.cellimg.image = UIImage(named: dataimg[indexPath.row])
        cell.crllbl.text = dataimg[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let circlevc = storyboard?.instantiateViewController(withIdentifier: "AreaofCircle") as! AreaofCircle
                    navigationController?.pushViewController(circlevc, animated: true)
        }
        else if indexPath.row == 1 {
            let circlevc = storyboard?.instantiateViewController(withIdentifier: "Areaofcube") as! Areaofcube
                    navigationController?.pushViewController(circlevc, animated: true)
        }
        else if indexPath.row == 2{
            let circlevc = storyboard?.instantiateViewController(withIdentifier: "Areaofcylinder") as! Areaofcylinder
                    navigationController?.pushViewController(circlevc, animated: true)
        }
        else if indexPath.row == 3{
            let circlevc = storyboard?.instantiateViewController(withIdentifier: "Areaofrectangle") as! Areaofrectangle
                    navigationController?.pushViewController(circlevc, animated: true)
        }else if indexPath.row == 4{
            let circlevc = storyboard?.instantiateViewController(withIdentifier: "Areaofsphere") as! Areaofsphere
                    navigationController?.pushViewController(circlevc, animated: true)
        }else if indexPath.row == 5{
            let circlevc = storyboard?.instantiateViewController(withIdentifier: "Areaoftrapezuim") as! Areaoftrapezuim
                    navigationController?.pushViewController(circlevc, animated: true)
        }
        else if indexPath.row == 6{
            let circlevc = storyboard?.instantiateViewController(withIdentifier: "Areaoftriangle") as! Areaoftriangle
                    navigationController?.pushViewController(circlevc, animated: true)
        }
    }
    
    
}
