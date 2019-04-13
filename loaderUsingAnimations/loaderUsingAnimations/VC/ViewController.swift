//
//  ViewController.swift
//  loaderUsingAnimations
//
//  Created by Hamza Farooq on 05/04/2019.
//  Copyright © 2019 Hamza Farooq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lv = HFLoader(frame: CGRect.init(x: 0, y: 0, width: 50, height: 50), viewBGColor: .clear, viewBorderWidth: 2, viewBorderColor: UIColor.orange, viewCornerRadius: 5, viewImage: #imageLiteral(resourceName: "Icon-App-60x60"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(lv)
        
    }
    
    @IBAction func startLoader(_ sender: Any) {
        lv.startAnimation()
    }
    
    @IBAction func stopLoader(_ sender: Any) {
        lv.stopAnimation()
    }
    
}

