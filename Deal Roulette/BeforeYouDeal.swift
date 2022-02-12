import Foundation
import UIKit

class BeforeYouDeal: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapButton() {
        showAlert()
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Take And Pay Order", message: "Select One", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Take", style: .default, handler: { action in
            self.performSegue(withIdentifier: "take", sender: self)
        }))
        alert.addAction(UIAlertAction(title: "Pay", style: .default, handler: { action in
            self.performSegue(withIdentifier: "pay", sender: self)
        }))
        alert.addAction(UIAlertAction(title: "Close", style: .destructive, handler: { action in
        }))
        present(alert, animated: true)
    }
}
