//
//  ViewController.swift
//  Filename: BMI_Calculator
//  Author     : Justice Ekeke
//  Student Id : 301222885
//  Date       : Dec 16 2021
//

import UIKit

class ViewController: UIViewController {

    //variables initialization
    var Uname: String = ""
    var Uage: Int = 0
    var Ugender: String = ""
    public var Uweight: Float = 0
    public var Uheight: Float = 0
    public var date = Date()

    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Age: UITextField!
    @IBOutlet weak var Gender: UITextField!
    @IBOutlet weak var Weight: UITextField!
    @IBOutlet weak var Height: UITextField!
    @IBOutlet weak var Bmi: UILabel!
    @IBOutlet weak var Advice: UILabel!
    @IBOutlet weak var Unit: UISwitch!
    
    override func viewDidLoad()
    {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
        
    }
    
//    func BMIcalc(Uweight:Float,Uheight:Float)
//    {
//        let finalBmi: Float = Uweight/(Uheight*Uheight)
//        let BMI = NSString(format: "%.2f", finalBmi) as String
//        Bmi.text = BMI
//
//    }
    
    @IBAction func Calculate(_ sender: UIButton)
    {
        //stores text input from textfield in variables
        Uname = Name.text!
        Uage = (Age.text! as NSString).integerValue
        Ugender = Gender.text!
        Uweight = (Weight.text! as NSString).floatValue
        Uheight = (Height.text! as NSString).floatValue
        
        let finalBmi: Float
        
        if Unit.isOn
        {
            //function to calculate BMI in Metric units
            finalBmi = Uweight/(Uheight*Uheight)
        }
        else
        {
            //function to calculate BMI in Imperial units
            finalBmi = (Uweight*703)/(Uheight*Uheight)
        }
        
        //stores calculated bmi value in BMI variable at 2 decimal places
        let BMI = NSString(format: "%.2f", finalBmi) as String
        Bmi.text = BMI
        
        date = Date()
        
        //advice text editor function based on range
        if (finalBmi < 16)
        {
            Advice.text = "Severe Thinness"
        }
        else if(finalBmi >= 16 && finalBmi <= 17)
        {
            Advice.text = "Modrate Thinness"
        }
        else if(finalBmi >= 17 && finalBmi <= 18.5)
        {
            Advice.text = "Mild Thinness"
        }
        else if(finalBmi >= 18.5 && finalBmi <= 25)
        {
            Advice.text = "Normal"
        }
        else if(finalBmi >= 25 && finalBmi <= 30)
        {
            Advice.text = "Overweight"
        }
        else if(finalBmi >= 30 && finalBmi <= 35)
        {
            Advice.text = "Obese Class I"
        }
        else if(finalBmi >= 35 && finalBmi <= 40)
        {
            Advice.text = "Obese Class II"
        }
        else if(finalBmi > 40)
        {
            Advice.text = "Obese Class III"
        }
        else
        {
            Advice.text = "Invalid input"
        }
        
    }
    
    
    
    
    
    
}

