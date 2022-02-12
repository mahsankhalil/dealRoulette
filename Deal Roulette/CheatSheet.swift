//
//  CheatSheet.swift
//  Deal Roulette
//
//  Created by Aaron Fleming on 1/22/22.
//

import Foundation

import UIKit

class CheatSheet: UIViewController, UINavigationBarDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

/*
 @IBAction func fiveTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Five"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func sixTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Six"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func sevenTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Seven"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func eightTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Eight"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func nineTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Nine"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func tenTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Ten"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func elevenTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Eleven"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func twelveTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Twelve"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func thirteenTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Thirteen"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func fourteenTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Fourteen"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func fifteenTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Fifteen"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func sixteenTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Sixteen"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func seventeenTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Seventeen"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func eightTeenTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Eighteen"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func nineteenTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Nineteen"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func twentyTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Twenty"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func twentyOneTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "twentyOne"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func twentyTwoTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "twentyTwo"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func twentyThreeTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "twentyThree"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func twentyFourTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "twentyFour"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func twentyFiveTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "twentyFive"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func twentySixTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "twentySix"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func twentySevenTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "twentySeven"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func twentyEightTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "twentyEight"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func twentyNineTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "twentyNine"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func thirtyTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Thirty"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func thirtyOneTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "thirtyOne"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func thirtyTwoTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "thirtyTwo"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func thirtyThreeTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "thirtyThree"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func thirtyFourTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "thirtyFour"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func thirtyFiveTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "thirtyFive"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func thirtySixTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "thirtySix"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func zeroTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "Zero"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 @IBAction func doubleZeroTapped(_ sender: Any) {
     if selectNumber.isHidden == false {
     numberLabel.text = "doubleZero"
     locationLabel.isHidden = true
     correctLabel.isHidden = true
     locationSelected.isHidden = false
 }
}
 */
