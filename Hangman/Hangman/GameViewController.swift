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
    @IBOutlet weak var hangmanImage: UIImageView!
    var phrase = ""
    var currentGameState = ""
    var charactersUsed: [String] = []
    var wrongCharactersUsed: [String] = []
    
    @IBOutlet weak var AButton: UIButton!
    @IBOutlet weak var BButton: UIButton!
    @IBOutlet weak var CButton: UIButton!
    @IBOutlet weak var DButton: UIButton!
    @IBOutlet weak var EButton: UIButton!
    @IBOutlet weak var FButton: UIButton!
    @IBOutlet weak var GButton: UIButton!
    @IBOutlet weak var HButton: UIButton!
    @IBOutlet weak var IButton: UIButton!
    @IBOutlet weak var JButton: UIButton!
    @IBOutlet weak var KButton: UIButton!
    @IBOutlet weak var LButton: UIButton!
    @IBOutlet weak var MButton: UIButton!
    @IBOutlet weak var NButton: UIButton!
    @IBOutlet weak var OButton: UIButton!
    @IBOutlet weak var PButton: UIButton!
    @IBOutlet weak var QButton: UIButton!
    @IBOutlet weak var RButton: UIButton!
    @IBOutlet weak var SButton: UIButton!
    @IBOutlet weak var TButton: UIButton!
    @IBOutlet weak var UButton: UIButton!
    @IBOutlet weak var VButton: UIButton!
    @IBOutlet weak var WButton: UIButton!
    @IBOutlet weak var XButton: UIButton!
    @IBOutlet weak var YButton: UIButton!
    @IBOutlet weak var ZButton: UIButton!
    lazy var buttons: [UIButton] = [self.AButton, self.BButton, self.CButton, self.DButton]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let hangmanPhrases = HangmanPhrases()
        phrase = hangmanPhrases.getRandomPhrase()
        print(phrase)
        self.guesses.text = phrase
        guesses.font = UIFont.systemFontOfSize(24)
        setUpCharacterGuessing()
        setGuessState()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setGuessState() {
        var guessState = ""
        for i in phrase.characters {
            if (String(i) == " ") {
                guessState += ("  ")
            } else {
                guessState += ("-")
            }
        }
        print(guessState)
        currentGameState = guessState
        self.guesses.text = guessState
        
    }
    
    func newCharacterGuessed(character: String) {
        if isWrongGuess(character) {
            wrongCharactersUsed.append(character)
            if wrongCharactersUsed.count == 1 {
                hangmanImage.image = UIImage(named: "hangman2.gif")
            } else if wrongCharactersUsed.count == 2 {
                hangmanImage.image = UIImage(named: "hangman3.gif")
            } else if wrongCharactersUsed.count == 3 {
                hangmanImage.image = UIImage(named: "hangman4.gif")
            } else if wrongCharactersUsed.count == 4 {
                hangmanImage.image = UIImage(named: "hangman5.gif")
            } else if wrongCharactersUsed.count == 5 {
                hangmanImage.image = UIImage(named: "hangman6.gif")
            } else if wrongCharactersUsed.count == 6 {
                hangmanImage.image = UIImage(named: "hangman7.gif")
                var alert = UIAlertController(title: "Game Over :(", message: "Nice try!", preferredStyle: UIAlertControllerStyle.Alert)
                
                var newGameAction = UIAlertAction(title: "New Game", style: UIAlertActionStyle.Default) {
                    UIAlertAction in
                    NSLog("OK Pressed")
                }
                var cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel) {
                    UIAlertAction in
                    
                    for button in self.buttons {
                        button.enabled = false
                    }
                    NSLog("Cancel Pressed")
                }
                
                
                alert.addAction(newGameAction)
                alert.addAction(cancelAction)
                self.presentViewController(alert, animated: true, completion: nil)
            }
        } else {
            var guessState = ""
            for i in phrase.characters {
                if (String(i) == " ") {
                    guessState += ("  ")
                } else if (charactersUsed.contains(String(i))) {
                    guessState += String(i)
                }else {
                    guessState += ("-")
                }
            }
            print(guessState)
            currentGameState = guessState
            self.guesses.text = currentGameState
        }
        print(charactersUsed)

    }
    
    func isWrongGuess(character: String) -> Bool {
        for i in phrase.characters {
            if (String(i) == character) {
                return false
            }
        }
        return true
    }
    
    func setUpCharacterGuessing() {
        AButton.addTarget(self, action: "guessA", forControlEvents: .TouchUpInside)
        BButton.addTarget(self, action: "guessB", forControlEvents: .TouchUpInside)
        CButton.addTarget(self, action: "guessC", forControlEvents: .TouchUpInside)
        DButton.addTarget(self, action: "guessD", forControlEvents: .TouchUpInside)
        EButton.addTarget(self, action: "guessE", forControlEvents: .TouchUpInside)
        FButton.addTarget(self, action: "guessF", forControlEvents: .TouchUpInside)
        GButton.addTarget(self, action: "guessG", forControlEvents: .TouchUpInside)
        HButton.addTarget(self, action: "guessH", forControlEvents: .TouchUpInside)
        IButton.addTarget(self, action: "guessI", forControlEvents: .TouchUpInside)
        JButton.addTarget(self, action: "guessJ", forControlEvents: .TouchUpInside)
        KButton.addTarget(self, action: "guessK", forControlEvents: .TouchUpInside)
        LButton.addTarget(self, action: "guessL", forControlEvents: .TouchUpInside)
        MButton.addTarget(self, action: "guessM", forControlEvents: .TouchUpInside)
        NButton.addTarget(self, action: "guessN", forControlEvents: .TouchUpInside)
        OButton.addTarget(self, action: "guessO", forControlEvents: .TouchUpInside)
        PButton.addTarget(self, action: "guessP", forControlEvents: .TouchUpInside)
        QButton.addTarget(self, action: "guessQ", forControlEvents: .TouchUpInside)
        RButton.addTarget(self, action: "guessR", forControlEvents: .TouchUpInside)
        SButton.addTarget(self, action: "guessS", forControlEvents: .TouchUpInside)
        TButton.addTarget(self, action: "guessT", forControlEvents: .TouchUpInside)
        UButton.addTarget(self, action: "guessU", forControlEvents: .TouchUpInside)
        VButton.addTarget(self, action: "guessV", forControlEvents: .TouchUpInside)
        WButton.addTarget(self, action: "guessW", forControlEvents: .TouchUpInside)
        XButton.addTarget(self, action: "guessX", forControlEvents: .TouchUpInside)
        YButton.addTarget(self, action: "guessY", forControlEvents: .TouchUpInside)
        ZButton.addTarget(self, action: "guessZ", forControlEvents: .TouchUpInside)
    }
    
    func guessA(){
        charactersUsed.append("A")
        newCharacterGuessed("A")
        AButton.enabled = false
        AButton.backgroundColor = UIColor.redColor()
    }
    
    func guessB(){
        charactersUsed.append("B")
        newCharacterGuessed("B")
        BButton.enabled = false
        BButton.backgroundColor = UIColor.redColor()
    }
    
    func guessC(){
        charactersUsed.append("C")
        newCharacterGuessed("C")
        CButton.enabled = false
        CButton.backgroundColor = UIColor.redColor()
    }
    
    func guessD(){
        charactersUsed.append("D")
        newCharacterGuessed("D")
        DButton.enabled = false
        DButton.backgroundColor = UIColor.redColor()
    }
    
    func guessE(){
        charactersUsed.append("E")
        newCharacterGuessed("E")
        EButton.enabled = false
        EButton.backgroundColor = UIColor.redColor()
    }
    
    func guessF(){
        charactersUsed.append("F")
        newCharacterGuessed("F")
        FButton.enabled = false
        FButton.backgroundColor = UIColor.redColor()
    }
    
    func guessG(){
        charactersUsed.append("G")
        newCharacterGuessed("G")
        GButton.enabled = false
        GButton.backgroundColor = UIColor.redColor()
    }
    
    func guessH(){
        charactersUsed.append("H")
        newCharacterGuessed("H")
        HButton.enabled = false
        HButton.backgroundColor = UIColor.redColor()
    }
    
    func guessI(){
        charactersUsed.append("I")
        newCharacterGuessed("I")
        IButton.enabled = false
        IButton.backgroundColor = UIColor.redColor()
    }
    
    func guessJ(){
        charactersUsed.append("J")
        newCharacterGuessed("J")
        JButton.enabled = false
        JButton.backgroundColor = UIColor.redColor()
    }
    
    func guessK(){
        charactersUsed.append("K")
        newCharacterGuessed("K")
        KButton.enabled = false
        KButton.backgroundColor = UIColor.redColor()
    }
    
    func guessL(){
        charactersUsed.append("L")
        newCharacterGuessed("L")
        LButton.enabled = false
        LButton.backgroundColor = UIColor.redColor()
    }
    
    func guessM(){
        charactersUsed.append("M")
        newCharacterGuessed("M")
        MButton.enabled = false
        MButton.backgroundColor = UIColor.redColor()
    }
    
    func guessN(){
        charactersUsed.append("N")
        newCharacterGuessed("N")
        NButton.enabled = false
        NButton.backgroundColor = UIColor.redColor()
    }
    
    func guessO(){
        charactersUsed.append("O")
        newCharacterGuessed("O")
        OButton.enabled = false
        OButton.backgroundColor = UIColor.redColor()
    }
    
    func guessP(){
        charactersUsed.append("P")
        newCharacterGuessed("P")
        PButton.enabled = false
        PButton.backgroundColor = UIColor.redColor()
    }
    
    func guessQ(){
        charactersUsed.append("Q")
        newCharacterGuessed("Q")
        QButton.enabled = false
        QButton.backgroundColor = UIColor.redColor()
    }
    
    func guessR(){
        charactersUsed.append("R")
        newCharacterGuessed("R")
        RButton.enabled = false
        RButton.backgroundColor = UIColor.redColor()
    }
    
    func guessS(){
        charactersUsed.append("S")
        newCharacterGuessed("S")
        SButton.enabled = false
        SButton.backgroundColor = UIColor.redColor()
    }
    
    func guessT(){
        charactersUsed.append("T")
        newCharacterGuessed("T")
        TButton.enabled = false
        TButton.backgroundColor = UIColor.redColor()
    }
    
    func guessU(){
        charactersUsed.append("U")
        newCharacterGuessed("U")
        UButton.enabled = false
        UButton.backgroundColor = UIColor.redColor()
    }
    
    func guessV(){
        charactersUsed.append("V")
        newCharacterGuessed("V")
        VButton.enabled = false
        VButton.backgroundColor = UIColor.redColor()
    }
    
    func guessW(){
        charactersUsed.append("W")
        newCharacterGuessed("W")
        WButton.enabled = false
        WButton.backgroundColor = UIColor.redColor()
    }
    
    func guessX(){
        charactersUsed.append("X")
        newCharacterGuessed("X")
        XButton.enabled = false
        XButton.backgroundColor = UIColor.redColor()
    }
    
    func guessY(){
        charactersUsed.append("Y")
        newCharacterGuessed("Y")
        YButton.enabled = false
        YButton.backgroundColor = UIColor.redColor()
    }
    
    func guessZ(){
        charactersUsed.append("Z")
        newCharacterGuessed("Z")
        ZButton.enabled = false
        ZButton.backgroundColor = UIColor.redColor()
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
