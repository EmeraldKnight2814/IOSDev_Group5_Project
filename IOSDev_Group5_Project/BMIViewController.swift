//
//  BMIViewController.swift
//  IOSDev_Group5_Project
//
//  Created by Student on 4/25/23.
//

import UIKit

class BMIViewController: UIViewController {
    
    
    @IBOutlet weak var imageOl: UIImageView!
    
    @IBOutlet weak var heightInches: UITextField!
    
    @IBOutlet weak var heightFeet: UITextField!
    
    @IBOutlet weak var weightPounds: UITextField!
    
    @IBOutlet weak var calculateOl: UIButton!
    
    @IBOutlet weak var descriptionOl: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionOl.text = ""
    }
    
    
    @IBAction func calculatePressed(_ sender: Any) {
        var height : Double? = (Double(heightFeet.text!)! * 12) + Double(heightInches.text!)!
        var weight : Double? = Double(weightPounds.text!)
        var BMI : Double = 703 * (weight! / (height! * height!))
        
        // Underweight
        if(BMI <= 18.5){
            descriptionOl.text = "Your Body Mass Index is \(round(BMI * 10) / 10). \nThis is considered Underweight, so you may need to put on some weight. You are recommended to ask your doctor or a dietitian for advice on how to do this safely and effectively"
            imageOl.image = UIImage(named: "underWeight")
        }
        // Normal
        else if(BMI > 18.5 && BMI < 25){
            descriptionOl.text = "Your Body Mass Index is \(round(BMI * 10) / 10). \nThis is considered Normal. By maintaining a healthy weight, you lower your risk of developing serious health problems. Good job, and keep up the good work!"
            imageOl.image = UIImage(named: "normal")
        }
        // Overweight
        else if(BMI >= 25 && BMI < 30){
            descriptionOl.text = "Your Body Mass Index is \(round(BMI * 10) / 10). \nThis is considered Overweight. You may be advised to lose some weight for health reasons. You are recommended to talk to your doctor or a dietitian for advice."
            imageOl.image = UIImage(named: "overWeight")
        }
        // Obese
        else{
            descriptionOl.text = "Your Body Mass Index is \(round(BMI * 10) / 10). \nThis is considered Obese. Your health may be at risk if you do not lose weight. You are recommended to talk to your doctor or a dietitian for advice."
            imageOl.image = UIImage(named: "obese")
        }
    }
    
}
