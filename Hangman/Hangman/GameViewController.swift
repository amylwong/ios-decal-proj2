//
//  GameViewController.swift
//  Hangman
//
//  Created by Shawn D'Souza on 3/3/16.
//  Copyright © 2016 Shawn D'Souza. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var guesses: UILabel!
    var phrase = ""
    @IBOutlet weak var AButton: UIButton!
    var charactersUsed: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let hangmanPhrases = HangmanPhrases()
        phrase = hangmanPhrases.getRandomPhrase()
        print(phrase)
        self.guesses.text = phrase
        guesses.font = UIFont.systemFontOfSize(24)
        setUpCharacterGuessing()
        setGuessState("")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setGuessState(character: String) {
        var guessState = ""
        for i in phrase.characters {
            if (String(i) == " ") {
                guessState += ("  ")
            } else if (character == String(i)) {
                guessState += character
            }else {
                guessState += ("-")
            }
        }
        print(guessState)
        self.guesses.text = guessState
        
    }
    
    func setUpCharacterGuessing() {
        AButton.addTarget(self, action: "guessA", forControlEvents: .TouchUpInside)
    }
    
    func guessA(){
        charactersUsed.append("A")
        print(charactersUsed)
        setGuessState("A")
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
