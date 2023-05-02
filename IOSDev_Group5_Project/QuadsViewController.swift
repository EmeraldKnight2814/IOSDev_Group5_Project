//
//  QuadsViewController.swift
//  IOSDev_Group5_Project
//
//  Created by student on 4/18/23.
//

import UIKit

class QuadsViewController: UIViewController {
    //Workout Btns
    @IBOutlet weak var btn1Outlet: UIButton!
    @IBOutlet weak var btn2Outlet: UIButton!
    //Workout Image
    @IBOutlet weak var exerciseImageOutlet: UIImageView!
    //Workout Description
    @IBOutlet weak var exerciseDescOutlet: UITextView!
    //GIF and Reset Button Outlets
    @IBOutlet weak var resetOutlet: UIButton!
    
    @IBOutlet weak var gifOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resetOutlet.center.x = view.center.x
        gifOutlet.center.x = view.center.x
        
        exerciseImageOutlet.image = UIImage(named: "rippedmcclintock")
        exerciseDescOutlet.text = "Are you ready to workout?"
    }
    @IBAction func gifBtn(_ sender: Any) {
        changeImage()
    }
    
    @IBAction func exercise1btn(_ sender: Any) {
        btn1Outlet.setTitle("Squat!!!", for: .normal)
        exerciseDescOutlet.text = "This exercise is great for building overall body strength but it reall attacks your quads. You are going to want to act like you are sitting in a chair then stand back up when your knees get to a 90 degree angle!"
        exerciseImageOutlet.image = UIImage(named: "squat1mcclintock")
        btn2Outlet.isHidden = true
        UIView.animate(withDuration: 1, animations:{
            self.btn1Outlet.center.x = self.view.center.x
        })
    }
    
    @IBAction func exercise2btn(_ sender: Any) {
        btn2Outlet.setTitle("Lunge!!!", for: .normal)
        exerciseDescOutlet.text = "You are going to step forward about 3 feet and then bend at both knees until your back knee almost touches the ground. Then stand back up and push off with your front leg to get back to a standing position. That's all there is to it!"
        exerciseImageOutlet.image = UIImage(named: "lunge1mcclintock")
        btn1Outlet.isHidden = true
        UIView.animate(withDuration: 1, animations: {
            self.btn2Outlet.center.x = self.view.center.x
        })
    }
   
    
    @IBAction func resetBtn(_ sender: Any) {
        btn1Outlet.isHidden = false
        btn2Outlet.isHidden = false
        exerciseImageOutlet.image = UIImage(named: "rippedmcclintock")
        exerciseDescOutlet.text = "Are you ready to workout?"
        btn1Outlet.setTitle("Exercise #1", for: .normal)
        btn2Outlet.setTitle("Exercise #2", for: .normal)
        UIView.animate(withDuration: 1, animations: {
            self.btn1Outlet.center.x = self.view.center.x-110
            self.btn2Outlet.center.x = self.view.center.x+110
        })
    }
    
    func changeImage(){
        if(exerciseImageOutlet.image == UIImage(named: "squat1mcclintock")){
            exerciseImageOutlet.image = UIImage(named: "squat2mcclintock")
        }
        else if(exerciseImageOutlet.image == UIImage(named: "squat2mcclintock")){
            exerciseImageOutlet.image = UIImage(named: "squat1mcclintock")
        }
        
        else if(exerciseImageOutlet.image == UIImage(named: "lunge1mcclintock")){
            exerciseImageOutlet.image = UIImage(named: "lunge2mcclintock")
        }
        else if(exerciseImageOutlet.image == UIImage(named: "lunge2mcclintock")){
            exerciseImageOutlet.image = UIImage(named: "lunge1mcclintock")
        }
    }
}
