import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //update background Color of ViewController
        view.backgroundColor = .red
        
        //create label
        let label =  UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        //add label to ViewController
        view.addSubview(label)
    }
}
