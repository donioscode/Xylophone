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
        playSound(soundName: sender.currentTitle!)
          print("Start")
          sender.alpha = 0.5
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
               sender.alpha = 1.0
               print("End")
           }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
        
    }
}
