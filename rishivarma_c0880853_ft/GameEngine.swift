//
//  GameEngine.swift
//  rishivarma_c0880853_ft
//
//  Created by RISHI VARMA on 2022-11-07.
//

import Foundation

var number: Int = 0
var option: String = "Number"
var optionIsCorrect: Bool = true

func loadGame() -> String {
    number = Int.random(in: 1..<100)
    return String(number)
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

