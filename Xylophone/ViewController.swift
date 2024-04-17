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
       playSound()
    }
    
    func playSound() {
        guard let path = Bundle.main.path(forResource: "C", ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
}

