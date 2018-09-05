//
//  Libary.swift
//  VideoGame Libary
//
//  Created by Kaleb Allen on 9/4/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import Foundation

//this will handle storing our games and all interactions with that array
class Libary {
    // array for game projects
    private var gameArray: [Game] = [Game(title:"Legend of Zelda Breath of The Wild"), Game(title:"Dark Souls"), Game(title:"Fallout")]
    
    func addGame() {
        //when we make a game we need the tittle, we also need user input, and we to add it to our game array, and a game object for the game.
        
        //tell user to enter in a game title
        print("please enter a game title: ")
        
        //we need uder input for the title
        var newGameTitle = readLine()
        
        while newGameTitle == nil || newGameTitle == "" {
            print("Invalid Title pelse try againe: ")
            newGameTitle = readLine()
        }
        
        let newGame = Game(title: newGameTitle!)
        gameArray.append(newGame)
        
        for game in gameArray {
            print(game.title)
            
        }
        
        
        
    }
    
    func removeGame() {
        //Removes a game from a libery
        for index in 0..<gameArray.count {
            print("\(index) \(gameArray[index].title)")
        }
        var userInput = Int(readLine()!)
        while userInput == nil {
            print("invalid input please enter a valid number")
            userInput = Int(readLine()!)
        }
        gameArray.remove(at: userInput!)
    }
    func listAvailbleGames() {
        // tells what games are currently in the libary array
        for game in gameArray {
            if game.checkedIn {
                print(game.title)
            }
        }
    }
    func listUnavibleGames() {
        //adds functionality to a list of games that are not avaible
        for game in gameArray {
            if game.checkedIn == false {
                print("\(game.title) is currently avaible")
                if let dueDate = game.dueDate {
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "MM/dd/yyyy"
                    print("this game is due to return: \(dateFormatter.string(from: dueDate))")
                }
            }
        }
    }
    func checkGameIn() {
        for index in 0..<gameArray.count {
            print("\(index). \(gameArray[index].title)")
            var userInput = Int(readLine()!)
            while userInput == nil {
                print("please enter a valid response")
                userInput = Int(readLine()!)
            }
            gameArray[userInput!].checkedIn = true
            gameArray[userInput!].dueDate = nil
        }
    }
    func checkOut() {
        for index in 0..<gameArray.count {
            print("\(index). \(gameArray[index].title)")
        }
        print("plese enter the number of the game you wish to check out:")
        var userInput = Int(readLine()!)
        while userInput == nil {
            print("please enter a valid response")
            userInput = Int(readLine()!)
        }
        gameArray[userInput!].checkedIn = false
        let currentCalender = Calendar.current
        let dueDate = currentCalender.date(byAdding: .day, value: 14, to: Date())
        gameArray[userInput!].dueDate = dueDate
    }
    
}
















