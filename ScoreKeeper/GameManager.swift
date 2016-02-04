//
//  GameManager.swift
//  ScoreKeeper
//
//  Created by Zach Fiorito on 2/3/16.
//  Copyright © 2016 Zach Fiorito. All rights reserved.
//

import Foundation

class Match {
    
    var homeScore = 0
    var awayScore = 0
    
    var homeName = "Home"
    var awayName = "Away"
    
    func isGameOver() -> Bool {
        if (homeScore == 25 && awayScore<=24) {
            return true
        } else if (awayScore == 25 && homeScore<=24) {
            return true
        }
        
        return false
    }
    
}
