//
//  CocentrationVC.swift
//  Concentration Game
//
//  Created by Konanki,Naga Lakshmi on 10/17/23.
//

import UIKit

class CocentrationVC: UIViewController {

    /*override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }*/
    var flipCount: Int = 0 {
        didSet{
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }      //number of times we flip the card
    //Initialize to 0
    
    @IBOutlet var cardbuttons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        //print("agh! a ghost!")
        
        flipCount += 1
    if let cardNumber = cardbuttons.firstIndex(of: sender) {
        // Use cardNumber here
    print("cardNumber:\(cardNumber)")
    }
    else{
    print("chosen card is not in the list")
    }
        //flipCountLabel.text = "Flips: \(flipCount)"
        flipCard(withEmoji: "👻", on: sender) //for every card it needs to be different emojis
        
    }
    func flipCard(withEmoji emoji:String, on button: UIButton){
        print("flipCard(withEmoji: \(emoji)")
        if button.currentTitle == emoji
        {
            button.setTitle("", for: .normal)
            button.backgroundColor = UIColor.systemOrange
        } else{
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = UIColor.white
        }
    }
    
    /*@IBAction func touchSecondCard(_ sender: UIButton) {
        flipCount += 1
        //flipCountLabel.text = "Flips: \(flipCount)"
        flipCard(withEmoji: "🎃", on: sender)
    }*/
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
