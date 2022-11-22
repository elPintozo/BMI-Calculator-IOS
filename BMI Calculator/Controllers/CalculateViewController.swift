import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain: CalculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSlide(_ sender: UISlider) {
        print("Height: \(String(format: "%.02f",sender.value)) m.")
        heightLabel.text = "\(String(format: "%.02f",sender.value))m"
    }
    
    @IBAction func weightSlide(_ sender: UISlider) {
        print("Weight: \(Int(sender.value)) kG.")
        weightLabel.text = "\(Int(sender.value))Kg."
    }
    
    @IBAction func btnCalculate(_ sender: UIButton) {
        
        let heightValue: Float = Float(heightSlider.value)
        let weightValue: Float = Float(weightSlider.value)
        // let bmiValue: Float = weightValue / pow(heightValue, 2)
        calculatorBrain.calculateBMI(height: heightValue, weight:weightValue)
        
        // First way to change to the next ViewController
        // let secondVC = SecondViewController()
        // secondVC.bmiValue = "BMI: \(String(format: "%.02f",bmiValue))"
        //self.present(secondVC, animated: true, completion: nil)
        
        // Second way to change to the next ViewController
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            let destinationVC =  segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
        }
    }
    
}

