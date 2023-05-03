//
//  BicepViewController.swift
//  IOSDev_Group5_Project
//
//  Created by student on 4/18/23.
//

import UIKit

class BicepViewController: UIViewController {
    //Create some gifs for workout
    let preacherCurlAnim = UIImage.gifImageWithName("preachCurl")
    let inclineCurl = UIImage.gifImageWithName("inclineCurl")
    
    //Outlet for top label so I can change it with whichever workout is clicked
        @IBOutlet weak var WorkoutTitleOL: UILabel!
        //Button For exercise1
        @IBOutlet weak var FirstExerciseBTN: UIButton!
        //button for exercise2
        @IBOutlet weak var SecondExerciseBTN: UIButton!
        //workoutDescription Outlet
        @IBOutlet weak var WorkoutDescriptionOL: UILabel!
        //Workout image Outlet
        @IBOutlet weak var WorkoutIMGView: UIImageView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            //set titles and hide desc on load
            WorkoutTitleOL.text! = "Bicep Day"
            WorkoutDescriptionOL.isHidden = true

            // Do any additional setup after loading the view.
        }
        //when First exercise button is pressed
@IBAction func ExerciseOneBTNPressed(_ sender: Any) {
    WorkoutDescriptionOL.isHidden = false
    WorkoutTitleOL.text! = "Preacher Curls"
    WorkoutDescriptionOL.text! = "Start by taking a seat on the bench and resting your tricpes on the front pad, bring your hands in to a tighter grip on the bar so that you are targeting your biceps more. Lastly, curl the bar upwards and flex your biceps, bring it up slow and controlled and squeee your bicep at the top, then slowly and under control lower the bar back down and repeat."
    WorkoutIMGView.image = preacherCurlAnim
        }
        //when Second exercise button is pressed
@IBAction func ExerciseTwoBTNPressed(_ sender: Any) {
    WorkoutIMGView.image = inclineCurl
    WorkoutDescriptionOL.isHidden = false
    WorkoutTitleOL.text! = "Incline Dumbbell Curl"
    WorkoutDescriptionOL.text! = "Start by laying on an inclined bench thats at about 60 degrees, take your dumbbells and let your arms hang fully extended. Next curl the weight up without moving your shoulders. Squeeze your bicep at the very top and slowly and under control bring the weights back down to your sides and repeat."
        }
}
