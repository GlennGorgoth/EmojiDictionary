//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Brandon Arnold on 5/31/17.
//  Copyright © 2017 Brandon Arnold. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "😀" {
        
            definitionLabel.text = "This is a smiley face"
            
        }
        
        if emoji == "😈" {
            
            definitionLabel.text = "This is a demon"
            
        }
        
        if emoji == "😖" {
            
            definitionLabel.text = "This is trying to poop"
            
        }
        
        if emoji == "🐹" {
            
            definitionLabel.text = "This is a cute hampster"
            
        }
        
        if emoji == "🐼" {
            
            definitionLabel.text = "This is a panda"
            
        }
        
        if emoji == "🎎" {
            
            definitionLabel.text = "This is a happy couple"
            
        }
        
        if emoji == "⛄️" {
            
            definitionLabel.text = "This is a snowman"
            
        }
        
  
        
        //"😀","😈","😖","🐹","🐼","🎎","⛄️"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
