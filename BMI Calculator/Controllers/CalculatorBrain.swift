import UIKit

struct CalculatorBrain{
    var bmiValue:BMI?
    
    mutating func calculateBMI(height: Float, weight:Float){
        var bmiResult:Float = weight / pow(height, 2)
        bmiValue = BMI(value: bmiResult, advice: BMI.get_advice(v:bmiResult), color: BMI.get_color(v:bmiResult))
    }
    
    func getBMIValue()->BMI{
        return bmiValue!
        
    }
    
}
