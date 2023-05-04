//
//  ShowViewController.swift
//  IOSDev_Group5_Project
//
//  Created by Student on 5/3/23.
//
import AVKit
import AVFoundation
import UIKit

class ShowViewController: UIViewController {
    var videoName: String?
    var videoName2: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let videoName = videoName, let videoURL = Bundle.main.url(forResource: videoName, withExtension: "mp4") {
            let player = AVPlayer(url: videoURL)
            let playerViewController = AVPlayerViewController()
            playerViewController.player = player
            playerViewController.view.frame = view.bounds
            playerViewController.showsPlaybackControls = true
            
            addChild(playerViewController)
            view.addSubview(playerViewController.view)
            playerViewController.didMove(toParent: self)
            
            player.play()
        }
        
        if let videoName2 = videoName2, let videoURL2 = Bundle.main.url(forResource: videoName2, withExtension: "mp4") {
            let player2 = AVPlayer(url: videoURL2)
            let playerViewController2 = AVPlayerViewController()
            playerViewController2.player = player2
            playerViewController2.view.frame = view.bounds
            playerViewController2.showsPlaybackControls = true
            
            addChild(playerViewController2)
            view.addSubview(playerViewController2.view)
            playerViewController2.didMove(toParent: self)
            
            player2.play()
        }
    }
}
