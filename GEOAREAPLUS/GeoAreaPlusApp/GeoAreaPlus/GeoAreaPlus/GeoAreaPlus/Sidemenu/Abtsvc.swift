
import UIKit

class Abtsvc: UIViewController {

    @IBOutlet weak var abvc: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        abvc.layer.cornerRadius = 20
        abvc.layer.borderColor = UIColor.purple.cgColor
        abvc.layer.borderWidth = 5
    }
    


}
