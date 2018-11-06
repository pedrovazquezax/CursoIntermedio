//
//  ViewController.swift
//  programaticSegues
//
//  Created by Pedro Antonio Vazquez Rodriguez on 10/30/18.
//  Copyright © 2018 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func yellowButton(_ sender: Any) {
        if segueSwitch.isOn{
            
            performSegue(withIdentifier: "Yellow", sender: nil)
            
        }

        }
    
    @IBAction func greenButton(_ sender: Any) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
    
}

