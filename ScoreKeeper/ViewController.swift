//
//  ViewController.swift
//  ScoreKeeper
//
//  Created by Zach Fiorito on 1/28/16.
//  Copyright © 2016 Zach Fiorito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var homeScoreLabel: UILabel!
    @IBOutlet var awayScoreLabel: UILabel!
    
    @IBOutlet weak var homeStepper: UIStepper!
    @IBOutlet weak var awayStepper: UIStepper!
    
    var approxHomeScore: Double = 0.0
    var approxAwayScore: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Handle our steppers
        //homeStepper.wraps = true
        //awayStepper.wraps = true
        
        homeStepper.autorepeat = true
        awayStepper.autorepeat = true
        
        homeStepper.minimumValue = 0
        awayStepper.minimumValue = 0
        homeStepper.maximumValue = 100
        awayStepper.maximumValue = 100
        
        homeStepper.stepValue = 1
        awayStepper.stepValue = 1
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Stepper gets pushed
    @IBAction func stepperAction(sender: UIStepper) {
        switch sender {
        case homeStepper: updateScore(1)
            NSLog("homeStepper pressed!")
            break
        case awayStepper: updateScore(2,)
            NSLog("awayStepper pressed!")
            break
        default: updateScore(3)
            break
        }
    }
    
    
    //Update the score variables and labels
    func updateScore(team: Int) {
        if (team == 1) {
            //Add point to the home team
            approxHomeScore = homeStepper.value
            
            //Lets make the score a nice pretty int
            var homeScore = Int(approxHomeScore)
            homeScoreLabel.text = "Home: \(homeScore)"
            
            NSLog("Home Point! \(homeScore)")
        } else if (team == 2) {
            //Add point to away team (booo!)
            approxAwayScore = awayStepper.value
            
            //Make the score pretty, yayyy integers!
            var awayScore = Int(approxAwayScore)
            awayScoreLabel.text = "Away: \(awayScore)"
            
            NSLog("Away Point! \(awayScore)")
        } else {
            //This should never happen
            NSLog("BAD SCORE UPDATE. SOMETHING IS BROKEN")
        }
    }
    
}

