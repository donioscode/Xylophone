//
//  ViewController.swift
//  Xylophone
//
//  Created by doniyor normuxammedov on 16/04/24.
//

import UIKit
import AVFoundation


var player: AVAudioPlayer?

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        print(sender.titleLabel?.text)
        
        playSound()
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
        
    }
}
