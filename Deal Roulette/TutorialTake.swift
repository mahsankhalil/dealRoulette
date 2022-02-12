import Foundation

import UIKit

class TutorialTake: UIViewController {
    
    @IBOutlet weak var insideLayout: UIImageView!
    @IBOutlet weak var outsideLayout: UIImageView!
    @IBOutlet weak var outsideBets: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        insideLayout.isHidden = true
        outsideLayout.isHidden = true
    }
    
    
    @IBAction func outsideTapped(_ sender: Any) {
        outsideBets.isHidden = true
        insideLayout.isHidden = true
        outsideLayout.isHidden = false
        firstAnimation()
        
    }
    
    
    @IBAction func insideTapped(_ sender: Any) {
        outsideBets.isHidden = true
        insideLayout.isHidden = false
        outsideLayout.isHidden = true
        outsideLayout.stopAnimating()
    }
    
    func firstAnimation()
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
