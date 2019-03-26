//
//  ViewController.swift
//  BLIH
//
//  Created by Guillaume Monot on 26/03/2019.
//  Copyright © 2019 Guillaume Monot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet fileprivate weak var topLabel: UILabel!
    @IBOutlet fileprivate weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.button.addTarget(self, action: #selector(buttonMethod), for: .touchDown)
    }
    
}

/// ViewController : Method extension
extension ViewController {
    
    @objc
    fileprivate func buttonMethod() {
        self.topLabel.text = "Hello YED";
        logger.verbose("come on")
    }
}
