//
//  ViewController.swift
//  primerapp
//
//  Created by Pedro Antonio Vazquez Rodriguez on 10/11/18.
//  Copyright © 2018 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.setTitle("Hola Mundo", for: .normal)
        button.backgroundColor  = UIColor(displayP3Red: 23/255, green: 200/255, blue: 67/255, alpha: 1)
    }
    //recordatorio de como se declaran funciones
    func hola(texto: String) {
        
    }

    
    @IBAction func pushButton(_ sender: UIButton) {
        
        print("Estoy presionando")
        label.text = "Mi primer app🙌🏻"
        label.textColor = UIColor.green
        label.font = UIFont(name: "Yuanti SC", size: 15)
        label.textAlignment = .center
        
    }
    
  
}

