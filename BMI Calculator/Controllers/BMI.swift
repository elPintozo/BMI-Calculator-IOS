import UIKit

struct BMI{
    let value: Float
    let advice: String
    let color: UIColor
    
    static func get_advice(v:Float) -> String {
        switch v {
            
        case 0...18.5:
            return "Underweight"
        case 18.6...24.9:
            return "Normal"
        case 25...:
            return "Overweight"
        default:
            return "Error"
        }
    }
    
    static func get_color(v:Float) -> UIColor {
        switch v {
            
        case 0...18.5:
            return #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        case 18.6...24.9:
            return #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        case 25...:
            return #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        default:
            return .white
        }
    }
}
