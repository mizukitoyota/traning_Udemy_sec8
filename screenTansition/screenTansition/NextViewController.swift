//
//  NextViewController.swift
//  screenTansition
//
//  Created by Training on 2020/11/14.
//  Copyright © 2020 training. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var numLabel: UILabel!
    
    var count2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        numLabel.text = String(count2)
    }
}
