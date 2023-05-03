//
//  ChestViewController.swift
//  IOSDev_Group5_Project
//
//  Created by student on 4/18/23.
//

import UIKit

class ChestViewController: UIViewController {

    @IBAction func exercise1Pressed(_ sender: Any) {
    }
    
    @IBAction func exercise2Pressed(_ sender: Any) {
    }
    
    @IBAction func description1Pressed(_ sender: Any) {
        imageDescription.image = UIImage(named: "chest1")
        ExerciseDescription.text = "This is exercise works the whole chest. Perform the dumbbell bench press exercise by lying flat on your back on a bench. Grab a pair of dumbbells and hold them on your hips.Squeeze your shoulder blades as you lower them again until your upper and lower arms form a 90-degree angle."
    }
    @IBAction func description2Pressed(_ sender: Any) {
        imageDescription.image = UIImage(named: "chest2")
        ExerciseDescription.text = "While traditional pushups work your chest, arms, and shoulders, incline pushups take some of the pressure off your arms and shoulders to give you a solid upper-chest workout. Just find an object about 3-5 inches high, put your legs on top and start the push ups."
    }
    
    @IBOutlet weak var imageDescription: UIImageView!
    
    @IBOutlet weak var ExerciseDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showExercise1" {
            let showViewController = segue.destination as? ShowViewController
            showViewController?.videoName = "chest1"
        }
           if segue.identifier == "showExercise2" {
               let showViewController = segue.destination as? ShowViewController
               showViewController?.videoName = "chest2"
           }
       }
   }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
