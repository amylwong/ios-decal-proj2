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
    var currentGameState = ""
    var charactersUsed: [String] = []
    
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
    }
    
    func guessB(){
        charactersUsed.append("B")
        newCharacterGuessed("B")
    }
    
    func guessC(){
        charactersUsed.append("C")
        newCharacterGuessed("C")
    }
    
    func guessD(){
        charactersUsed.append("D")
        newCharacterGuessed("D")
    }
    
    func guessE(){
        charactersUsed.append("E")
        newCharacterGuessed("E")
    }
    
    func guessF(){
        charactersUsed.append("F")
        newCharacterGuessed("F")
    }
    
    func guessG(){
        charactersUsed.append("G")
        newCharacterGuessed("G")
    }
    
    func guessH(){
        charactersUsed.append("H")
        newCharacterGuessed("H")
    }
    
    func guessI(){
        charactersUsed.append("I")
        newCharacterGuessed("I")
    }
    
    func guessJ(){
        charactersUsed.append("J")
        newCharacterGuessed("J")
    }
    
    func guessK(){
        charactersUsed.append("K")
        newCharacterGuessed("K")
    }
    
    func guessL(){
        charactersUsed.append("L")
        newCharacterGuessed("L")
    }
    
    func guessM(){
        charactersUsed.append("M")
        newCharacterGuessed("M")
    }
    
    func guessN(){
        charactersUsed.append("N")
        newCharacterGuessed("N")
    }
    
    func guessO(){
        charactersUsed.append("O")
        newCharacterGuessed("O")
    }
    
    func guessP(){
        charactersUsed.append("P")
        newCharacterGuessed("P")
    }
    
    func guessQ(){
        charactersUsed.append("Q")
        newCharacterGuessed("Q")
    }
    
    func guessR(){
        charactersUsed.append("R")
        newCharacterGuessed("R")
    }
    
    func guessS(){
        charactersUsed.append("S")
        newCharacterGuessed("S")
    }
    
    func guessT(){
        charactersUsed.append("T")
        newCharacterGuessed("T")
    }
    
    func guessU(){
        charactersUsed.append("U")
        newCharacterGuessed("U")
    }
    
    func guessV(){
        charactersUsed.append("V")
        newCharacterGuessed("V")
    }
    
    func guessW(){
        charactersUsed.append("W")
        newCharacterGuessed("W")
    }
    
    func guessX(){
        charactersUsed.append("X")
        newCharacterGuessed("X")
    }
    
    func guessY(){
        charactersUsed.append("Y")
        newCharacterGuessed("Y")
    }
    
    func guessZ(){
        charactersUsed.append("Z")
        newCharacterGuessed("Z")
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
