//
//  Menu.swift
//  VideoGame Libary
//
//  Created by Kaleb Allen on 8/30/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import Foundation
//Menu
class Menu {
    let libary = Libary()
    var shouldQuit = false
    
    func go() {
        print("""
Menu
1. add game
2. remove game
3. list avabile gmaes
4. check out game
5. check in games
6. list check out games
7. help
8. quit
""")
        repeat {
            var input = getInput()
            
            while validateInput(input) == false {
                print("Invalid input")
                input = getInput()
                
            }
            handleInput(input)
        }            while !shouldQuit
    }
    func handleInput(_ input: String) {
        switch input {
        case "1":
            libary.addGame()
        case "2":
            libary.removeGame()
        case "3":
            libary.listAvailbleGames()
        case "4":
            libary.checkOut()
        case "5":
            libary.checkGameIn()
        case "6":
            libary.listUnavibleGames()
        case "7":
            print("Pick a number to acces its function")
        case "8":
            shouldQuit = true
        default:
            print("Please choose a number")
            
        }
    }
    
}


func validateInput(_ input: String) -> Bool {
    let menuOptions = Array(1...8)
    guard let number = Int(input) else { return false}
    return menuOptions.contains(number)
}


func getInput() -> String {
    var input: String? = nil
    
    repeat {
        let line =
            readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
        if line != "" {
            input = line
        } else {
            print("Invalid input.")
        }
    }                       while input == nil
    return input!
}
















