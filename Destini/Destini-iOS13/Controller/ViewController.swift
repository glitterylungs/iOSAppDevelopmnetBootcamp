//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.checkAnswer(userAnswer: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI(){
        textLabel.text = storyBrain.getLabelText()
        choice1Button.setTitle(storyBrain.getButtonOneText(), for: .normal)
        choice2Button.setTitle(storyBrain.getButtonTwoText(), for: .normal)
    }
    

}

