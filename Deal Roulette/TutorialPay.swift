//
//  TutorialPay.swift
//  Deal Roulette
//
//  Created by Aaron Fleming on 1/29/22.
//

import Foundation

import UIKit

class TutorialPay: UIViewController {
    
    @IBOutlet weak var insidePayLabel: UILabel!
    @IBOutlet weak var outsideBets: UILabel!
    @IBOutlet weak var insideLayout: UIImageView!
    @IBOutlet weak var outsideLayout: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        insideLayout.isHidden = true
        outsideLayout.isHidden = true
        insidePayLabel.isHidden = true
        
        
    }
    @IBAction func inside(_ sender: Any) {
        insideLayout.isHidden = false
        outsideLayout.isHidden = true
        outsideBets.isHidden = true
        insidePayLabel.isHidden = false
        firstAnimation()
        outsideLayout.stopAnimating()
    }
    
    @IBAction func outside(_ sender: Any) {
        insideLayout.isHidden = true
        outsideLayout.isHidden = false
        outsideBets.isHidden = true
        insidePayLabel.isHidden = true
        secondAnimation()
        insideLayout.stopAnimating()
    }
    
    func firstAnimation()
    {
        let first = ["secondTwelve", "secondTwelveTwo.png", "secondTwelveThree.png", "secondTwelveFour.png", "secondTwelveFive.png", "secondTwelveSix.png", "secondTwelveSeven", "secondTwelveEight.png", "secondTwelveNine.png", "secondTwelveTen.png", "secondTwelveEleven.png", "secondTwelveTwelve.png", "secondTwelveThirteen.png"]
        var images = [UIImage]()

        for i in 0..<first.count
        {
            images.append(UIImage(named: first[i])!)
        }

        insideLayout.animationImages = images
        insideLayout.animationDuration = 20
        insideLayout.animationRepeatCount = 1
        insideLayout.startAnimating()
    }
    
    func secondAnimation()
    {
        let first = ["outside", "outsideTwo.png", "outsideThree.png", "outsideFour.png", "outsideFive.png", "outsideSix.png", "outsideSeven", "outsideEight.png", "outsideNine.png", "outsideTen.png", "outsideEleven.png", "outsideTwelve.png", "outsideThirteen.png"]
        var images = [UIImage]()

        for i in 0..<first.count
        {
            images.append(UIImage(named: first[i])!)
        }

        outsideLayout.animationImages = images
        outsideLayout.animationDuration = 20
        outsideLayout.animationRepeatCount = 1
        outsideLayout.startAnimating()
    }
    
}
