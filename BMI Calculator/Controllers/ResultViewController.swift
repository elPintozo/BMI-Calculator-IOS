import UIKit

class ResultViewController: UIViewController {

    var bmiValue: BMI?
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultBackground: UIImageView!
    @IBOutlet weak var tipsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = String(format: "%.02f", bmiValue?.value ?? 0.0)
        resultBackground.backgroundColor = bmiValue?.color
        tipsLabel.text = bmiValue?.advice ?? ""
    }

    @IBAction func recalculateBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
