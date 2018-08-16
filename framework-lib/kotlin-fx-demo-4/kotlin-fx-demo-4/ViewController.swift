//
//  ViewController.swift
//  kotlin-fx-demo-4
//
//  Created by Evgeny Petrenko on 15.08.18.
//  Copyright © 2018 Evgeny Petrenko. All rights reserved.
//

import UIKit
import Demo

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(DemoObject().field)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

