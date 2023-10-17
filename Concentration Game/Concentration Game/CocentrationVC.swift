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
    @IBAction func touchCard(_ sender: UIButton) {
        //print("agh! a ghost!")
        flipCard(withEmoji: "👻", on: sender)
    }
    func flipCard(withEmoji emoji:String, on button: UIButton){
        if button.currentTitle == emoji
        {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = UIColor(red: 0.2, green: 0.4, blue: 1.0, alpha: 0.5)
        } else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0.5)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
