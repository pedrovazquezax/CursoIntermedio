//
//  ViewController.swift
//  light
//
//  Created by Pedro Antonio Vazquez Rodriguez on 10/11/18.
//  Copyright © 2018 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var lightOn = false
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.black
        button.setTitle("ON", for: .normal)
        button.tintColor = UIColor.white
    }

    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        toggleTorch(on: lightOn)
        updateUI()
        
    }
    
    func  updateUI() {
        if lightOn {
            view.backgroundColor = .white
            button.setTitle("OFF", for: .normal)
            button.tintColor = UIColor.black
        } else{
            view.backgroundColor = .black
            button.setTitle("ON", for: .normal)
            button.tintColor = UIColor.white
        }
    }
    
    func toggleTorch(on: Bool) {
        guard let device = AVCaptureDevice.default(for: AVMediaType.video)
            else {return}
        
        if device.hasTorch {
            do {
                try device.lockForConfiguration()
                
                if on == true {
                    device.torchMode = .on
                } else {
                    device.torchMode = .off
                }
                
                device.unlockForConfiguration()
            } catch {
                print("Torch could not be used")
            }
        } else {
            print("Torch is not available")
        }
    }
    
    
    

}

