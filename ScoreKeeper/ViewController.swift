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
    var homeScore = 0
    var awayScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addAwayScore() {
        
        //Update Scores
        awayScore++
        NSLog("Away Point! \(awayScore)")
        if(awayScore >= 25) {
            awayScore = 0
        }
        awayScoreLabel.text = "Away: \(awayScore)"
        
    }
    
    @IBAction func addHomeScore() {
        NSLog("Home Point!")
        
        //Update Scores
        homeScore++
        NSLog("Home Score \(homeScore)")
        homeScoreLabel.text = "Home: \(homeScore)"
        
    }
    
    



}

