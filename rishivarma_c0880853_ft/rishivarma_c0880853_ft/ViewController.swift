//
//  ViewController.swift
//  rishivarma_c0880853_ft
//
//  Created by RISHI VARMA on 2022-11-07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiLabel_DisplayNumber: UILabel!
    
    @IBOutlet weak var uiLabel_Even: UILabel!
    
    @IBOutlet weak var uiLabel_Odd: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func loadGame() {
        uiLabel_DisplayNumber.text = Int.random(in: 1...<10000)
    }

}

