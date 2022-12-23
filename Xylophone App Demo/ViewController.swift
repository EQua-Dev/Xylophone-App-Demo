//
//  ViewController.swift
//  Xylophone App Demo
//
//  Created by Richard on 23/12/2022.
//
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        //Reduces the sender's (the button that got pressed) opacity to half.
        print("Start")
        sender.alpha = 0.5
        playSound(btnTitle: sender.currentTitle!)
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
            print("End")
        }
        
        
        
    }
    
    func playSound(btnTitle: String) {
        print(btnTitle)
        let url = Bundle.main.url(forResource: btnTitle, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
}
