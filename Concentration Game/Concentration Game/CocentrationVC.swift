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
            button.backgroundColor = UIColor.systemOrange
        } else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = UIColor.white
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
