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
    
    @IBOutlet weak var uiImage_Result: UIImageView!

    var number: Int = 0
    var option: String = "Number"
    var optionIsCorrect: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadGame()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func uiButton_Even_Touched(_ sender: UIButton) {
        optionSelected(opt: "Even")
        verifyResult()
        displayResult()
        
    }
    
    @IBAction func uiButton_Odd_Touched(_ sender: UIButton) {
        optionSelected(opt: "Odd")
        verifyResult()
        displayResult()
    }
    
    func displayResult() {
        let alert_title: String = "Result"
        var alert_message: String = "text"
        uiImage_Result.isHidden = false
        if optionIsCorrect {
            uiImage_Result.image = UIImage(named: "Correct")
            alert_message = "Great, Right Answer. It is an \(option) number"
        } else if !optionIsCorrect {
            uiImage_Result.image = UIImage(named: "InCorrect")
            alert_message = "Oops, Wrong Answer. The Answer is \(option)"
        }
//        Thread.sleep(forTimeInterval: 1)
        let alert = UIAlertController(title: alert_title, message: alert_message, preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Show Progress", style: UIAlertAction.Style.cancel, handler: { action in
            self.loadGame()
        }))
        alert.addAction(UIAlertAction(title: "Play Again", style: UIAlertAction.Style.default, handler: { action in
            self.loadGame()
        }))

        self.present(alert, animated: true, completion: nil)
    }
    func loadGame() {
        uiImage_Result.isHidden = true
        number = Int.random(in: 1..<100)
        uiLabel_Number.text = String(number)
    }

    func optionSelected(opt:String) {
        option = opt
    }

    func verifyResult() {
        if number % 2 == 0 && option == "Even" {
            optionIsCorrect = true
        } else if number % 2 != 0 && option == "Odd" {
            optionIsCorrect = true
        } else {
            optionIsCorrect = false
        }
    }

}
