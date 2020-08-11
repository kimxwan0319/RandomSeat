//
//  ViewController.swift
//  collectionViewTest
//
//  Created by 김수완 on 2020/07/29.
//  Copyright © 2020 김수완. All rights reserved.
//

import UIKit

var num : Int = 20

class ViewController: UIViewController {

    @IBOutlet weak var numLable: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        numLable.text = String(num)
    }

    @IBAction func minus(_ sender: Any) {
        if num > 1 && num < 100 {
        num -= 1
        }
        numLable.text = String(num)
    }
    
    @IBAction func plus(_ sender: Any) {
        if num > 0 && num < 99 {
        num += 1
        }
        numLable.text = String(num)
    }
    
}

