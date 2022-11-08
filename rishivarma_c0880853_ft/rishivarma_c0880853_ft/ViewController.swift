//
//  ViewController.swift
//  rishivarma_c0880853_ft
//
//  Created by RISHI VARMA on 2022-11-07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiLabel_Number: UILabel!
    @IBOutlet weak var uiButton_Even: UIButton!
    @IBOutlet weak var uiButton_Odd: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiLabel_Number.text = loadGame()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func uiButton_Even_Touched(_ sender: UIButton) {
        optionSelected(opt: "Even")
        verifyResult()
        
    }
    
    @IBAction func uiButton_Odd_Touched(_ sender: UIButton) {
        optionSelected(opt: "Odd")
        verifyResult()
    }
    
    func displayResult() {
        var alert_title: String = "Result"
        var alert_message: String = "text"
        if optionIsCorrect {
            alert_message = "Great, Right Answer. It is an \(option) number"
        } else if !optionIsCorrect {
            alert_message = "Oops, Wrong Answer. The Answer is \(option)"
        }
        let alert = UIAlertController(title: alert_title, message: alert_message, preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Play Again", style: UIAlertAction.Style.default, handler: { action in
            self.uiLabel_Number.text = loadGame()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }

}

