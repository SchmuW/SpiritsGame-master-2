//
//  ViewController.swift
//  SpiritsGame
//
//  Created by  on 11/5/20.
//  Copyright © 2020 Owen Lieberman. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // TODO: Set save points
    // let defaults = UserDefaults.standard
    
    @IBOutlet var titleTapRec: UITapGestureRecognizer!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tapLabel: UILabel!
    
    var boomSoundEffect: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.alpha = 1.0
        tapLabel.alpha = 1.0
    }

    @IBAction func titleTapped(_ sender: Any) {
        
        let path = Bundle.main.path(forResource: "boomsfx.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            boomSoundEffect = try AVAudioPlayer(contentsOf: url)
            boomSoundEffect?.play()
        } catch {
            // couldn't load file :(
        }
        
        
        
        performSegue(withIdentifier: "titleToMenu", sender: UITapGestureRecognizer.self)
    }
    
}

