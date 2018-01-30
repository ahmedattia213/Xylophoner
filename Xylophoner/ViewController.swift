//
//  ViewController.swift
//  Xylophoner
//
//  Created by Ahmed Amr on 1/20/18.
//  Copyright © 2018 Ahmed Amr. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    var noteSound = AVAudioPlayer()
    
    @IBAction func notePressed(_ sender: UIButton) {
         noteSound = try! AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "note\(sender.tag)", ofType: "wav")!))
        noteSound.play()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

