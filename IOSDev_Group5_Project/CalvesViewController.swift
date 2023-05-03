//
//  CalvesViewController.swift
//  IOSDev_Group5_Project
//
//  Created by student on 4/18/23.
//

import UIKit

class CalvesViewController: UIViewController {
    let gif1 = UIImage.gifImageWithName("calf1")
    let gif2 = UIImage.gifImageWithName("calf2")

    @IBOutlet weak var descriptionOutlet: UILabel!
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var exerciseName: UILabel!
    @IBOutlet weak var exerciseTwo: UIButton!
    @IBOutlet weak var exerciseOne: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        exerciseName.text = ""
        descriptionOutlet.text = ""

        // Do any additional setup after loading the view.
    }
    @IBAction func buttonOneClicked(_ sender: Any) {
        
        imageOutlet.image = gif1
        exerciseName.text = "Weighted Calf Raises"
        exerciseOne.isEnabled = false
        exerciseTwo.isEnabled = true
        descriptionOutlet.text = "Hold a dumbbell in each hand and stand with your feet about shoulder-width apart. Let your arms hang straight below your shoulders. Rise up onto your toes, then slowly return to the starting position."
        
    }
    
    @IBAction func buttonTwoClicked(_ sender: Any) {
        
        imageOutlet.image = gif2
        exerciseName.text = "Seated Calf Raises"
        exerciseTwo.isEnabled = false
        exerciseOne.isEnabled = true
        descriptionOutlet.text = "Using a bench, sit with feet flat on the floor, rise onto your toes, lifting the weight and slowly return to the start"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
