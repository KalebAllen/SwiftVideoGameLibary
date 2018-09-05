//
//  Game.swift
//  VideoGame Libary
//
//  Created by Kaleb Allen on 9/4/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import Foundation

//this will be the data model to rep our games in the libary
class Game {
   //store the title of a game
    var title: String
    
    var checkedIn = true
    
    var dueDate: Date?
    
    init(title: String) {
        self.title = title
        
    }
}





























