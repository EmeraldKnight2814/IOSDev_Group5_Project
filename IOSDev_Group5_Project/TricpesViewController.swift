//
//  TricpesViewController.swift
//  IOSDev_Group5_Project
//
//  Created by student on 4/18/23.
//

import UIKit

class TricpesViewController: UIViewController {

    @IBOutlet weak var exercise1Btn: UIButton!
    
    @IBOutlet weak var exercise2Btn: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var descriptionOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btn1Action(_ sender: Any) {
        nameLabel.text = "Exercise Name: Tricep Kickback"
        imageOutlet.image = UIImage(named: "TricepKickback")
        descriptionOutlet.text = "Start by bending over with one leg at a 90 degree on a bench and one arm making contact with the bench. Have your opposite arm at a 90 degree holding a dumbell and bend it backwards parallel to your body."
    }
    
    @IBAction func btn2Action(_ sender: Any) {
        nameLabel.text = "Exercise Name: Skull Crushers"
        imageOutlet.image = UIImage(named: "skullcrushers")
        descriptionOutlet.text = "Start sitting on a bench at 45 degrees or laying on a bench holding your barbell shoulder-width apart. Lift the barbell above your forehead until your arms lock and back down to your forhead."
        
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
