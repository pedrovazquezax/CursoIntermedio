//
//  ViewController.swift
//  light
//
//  Created by Pedro Antonio Vazquez Rodriguez on 10/11/18.
//  Copyright © 2018 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.setTitle("OFF", for: .normal)
        button.tintColor = UIColor.black
    }

    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
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
    
    
    
    

}

