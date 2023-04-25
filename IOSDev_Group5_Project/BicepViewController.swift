//
//  BicepViewController.swift
//  IOSDev_Group5_Project
//
//  Created by student on 4/18/23.
//

import UIKit

class BicepViewController: UIViewController {
    //Outlet for top label so I can change it with whichever workout is clicked
        @IBOutlet weak var WorkoutTitleOL: UILabel!
        //Button For exercise1
        @IBOutlet weak var FirstExerciseBTN: UIButton!
        //button for exercise2
        @IBOutlet weak var SecondExerciseBTN: UIButton!
        //button for exercise3
        @IBOutlet weak var ThirdExerciseBTN: UIButton!
        //Description Outlet for selected workout
        @IBOutlet weak var WorkoutDescriptionOL: UILabel!
        //Workout image Outlet
        @IBOutlet weak var WorkoutIMGView: UIImageView!
        
        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
        }
        //when First exercise button is pressed
@IBAction func ExerciseOneBTNPressed(_ sender: Any) {
            //when button 1 is pressed, hide all other buttons, display correlated image in the view, and display text in workoutdesc OL
            //repeat for button two and three
        }
        //when Second exercise button is pressed
@IBAction func ExerciseTwoBTNPressed(_ sender: Any) {
        }
        
        //when Third Exercise button is pressed
@IBAction func ExerciseThreeBTNPressed(_ sender: Any) {
        }
        

    }
