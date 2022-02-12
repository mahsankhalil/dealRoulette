//
//  ViewController.swift
//  Deal Roulette
//
//  Created by Aaron Fleming on 12/20/21.
//

import UIKit

class DealGame: UIViewController {
    
    var level1: Bool = true
    
    @IBOutlet weak var deal: UIButton!
    @IBOutlet weak var noMoreBets: UIButton!
    @IBOutlet weak var getNumber: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var card: UIImageView!
    @IBOutlet weak var marker: UIImageView!
    @IBOutlet weak var markerTwo: UIImageView!
    @IBOutlet weak var placeMarker: UIButton!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var tap: UILabel!
    @IBOutlet weak var incorrect: UILabel!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noMoreBets.isHidden = true
        imageView.isHidden = true
        card.isHidden = true
        getNumber.isHidden = true
        markerTwo.isHidden = true
        placeMarker.isHidden = true
        one.isHidden = true
        two.isHidden = true
        tap.isHidden = true
        incorrect.isHidden = true
        addSwipe()
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        deal.isHidden = true
        noMoreBets.isHidden = false
        imageView.isHidden = false
    }
    
    @IBAction func noMoreTapped(_ sender: Any) {
        noMoreBets.isHidden = true
        getNumber.isHidden = false
    }
    
    @IBAction func getNumberTapped(_ sender: Any) {
        getNumber.isHidden = true
        card.isHidden = false
        tap.isHidden = false
        placeMarker.isHidden = false
        one.isHidden = false
        two.isHidden = false
        card.isHidden = false
    }
    
    @IBAction func oneTapped(_ sender: Any) {
        numberLabel.text = "One"
        tap.isHidden = true
        incorrect.isHidden = true
    }
    
    @IBAction func twoTapped(_ sender: Any) {
        numberLabel.text = "Two"
        tap.isHidden = true
    }
    
    @IBAction func placeMarkerTapped(_ sender: Any) {
        if level1{
            if numberLabel.text == "One" {
                marker.isHidden = true
                markerTwo.isHidden = false
                placeMarker.isHidden = true
                tap.isHidden = true
                incorrect.isHidden = true
            }
                else if /*numberLabel.text == "Three" &&*/ numberLabel.text != "One" && numberLabel.text != "" {
                    tap.isHidden = true
                    incorrect.isHidden = false
                
                    }
                }
    }
    func addSwipe() {
        let directions: [UISwipeGestureRecognizer.Direction] = [.right, .left, .up, .down]
        for direction in directions {
            let gesture = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe))
            gesture.direction = direction
            self.imageView.addGestureRecognizer(gesture)
        }
    }

    @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
        let direction = sender.direction
        switch direction {
            case .right:
            imageView.isHidden = true
            case .left:
            imageView.isHidden = true
            case .up:
            imageView.isHidden = true
            case .down:
            imageView.isHidden = true
            default:
                print("Unrecognized Gesture Direction")
        }
    }
    
}

