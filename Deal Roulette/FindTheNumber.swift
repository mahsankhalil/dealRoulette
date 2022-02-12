import UIKit

enum Levels: String {
    case level1 = "Two"
    case level2 = "Three"
}

class FindTheNumber: UIViewController {
    
    var level: Levels = .level1
    
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var ten: UIButton!
    @IBOutlet weak var eleven: UIButton!
    @IBOutlet weak var twelve: UIButton!
    @IBOutlet weak var thirteen: UIButton!
    @IBOutlet weak var fourteen: UIButton!
    @IBOutlet weak var fifteen: UIButton!
    @IBOutlet weak var sixteen: UIButton!
    @IBOutlet weak var seventeen: UIButton!
    @IBOutlet weak var eighteen: UIButton!
    @IBOutlet weak var nineteen: UIButton!
    @IBOutlet weak var twenty: UIButton!
    @IBOutlet weak var twentyOne: UIButton!
    @IBOutlet weak var twentyTwo: UIButton!
    @IBOutlet weak var twentyThree: UIButton!
    @IBOutlet weak var twentyFour: UIButton!
    @IBOutlet weak var twentyFive: UIButton!
    @IBOutlet weak var twentySix: UIButton!
    @IBOutlet weak var twentySeven: UIButton!
    @IBOutlet weak var twentyEight: UIButton!
    @IBOutlet weak var twentyNine: UIButton!
    @IBOutlet weak var thirty: UIButton!
    @IBOutlet weak var thirtyOne: UIButton!
    @IBOutlet weak var thirtyTwo: UIButton!
    @IBOutlet weak var thirtyThree: UIButton!
    @IBOutlet weak var thirtyFour: UIButton!
    @IBOutlet weak var thirtyFive: UIButton!
    @IBOutlet weak var thirtySix: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var doubleZero: UIButton!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var card: UIImageView!
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var selectNumber: UIButton!
    @IBOutlet weak var dollyOne: UIImageView!
    @IBOutlet weak var locationSelected: UILabel!
    @IBOutlet weak var nextLevelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetView()
    }
    
    func resetView() {
        selectNumber.isHidden = true
        correctLabel.isHidden = true
        card.isHidden = true
        locationLabel.isHidden = true
        dollyOne.isHidden = true
        locationSelected.isHidden = true
        nextLevelButton.isHidden = true
        hideAllNumberTextFields()
    }
    
    @IBAction func twoTapped(_ sender: Any) {
        if selectNumber.isHidden == false {
            numberLabel.text = "Two"
            locationLabel.isHidden = true
            correctLabel.isHidden = true
            locationSelected.isHidden = false
        }
    }
    
    @IBAction func threeTapped(_ sender: Any) {
        if selectNumber.isHidden == false {
            numberLabel.text = "Three"
            locationLabel.isHidden = true
            correctLabel.isHidden = true
            locationSelected.isHidden = false
        }
    }
    @IBAction func fourTapped(_ sender: Any) {
        if selectNumber.isHidden == false {
            numberLabel.text = "Four"
            locationLabel.isHidden = true
            correctLabel.isHidden = true
            locationSelected.isHidden = false
        }
    }
    
    @IBAction func getNumberTapped(_ sender: Any) {
        card.isHidden = false
        numberButton.isHidden = true
        selectNumber.isHidden = false
        locationLabel.isHidden = false
        correctLabel.isHidden = true
        dollyOne.isHidden = true
        
    }
    
    @IBAction func submitTapped(_ sender: Any) {
        setupButtonTappedView()
        switch level {
            case .level1:
                showSuccess(state: numberLabel.text == "Two")
            case .level2:
                showSuccess(state: numberLabel.text == "Four")
        }
        
        if (numberLabel.text == "Two" && level == .level1) || (numberLabel.text == "Four" && level == .level2) {
            card.isHidden = true
            selectNumber.isHidden = true
            numberButton.isHidden = true
        }
    }
    
    @IBAction func nextLevelTapped() {
        if level == .level1 {
            level = .level2
            two.isHidden = false
            /// show dollay at updated correct location next time
            dollyOne.frame = four.frame
        } else {
            /// reset to level 1 since we do not have level 3
            dollyOne.frame = two.frame
            level = .level1
        }
        resetView()
        /// scenario of reseting button state
        numberButton.isHidden = false
        nextLevelButton.isHidden = true
    }
    
    /// For success case
    func showSuccess(state: Bool) {
        dollyOne.isHidden = !state
        locationLabel.isHidden = !state
        correctLabel.isHidden = !state
        locationLabel.isHidden = state
        nextLevelButton.isHidden = !state
    }
    
    /// This is common functionality needs to be performed on button tapped
    func setupButtonTappedView() {
        three.isHidden = three.isHidden || numberLabel.text == "Three"
        four.isHidden = four.isHidden || numberLabel.text == "Four"
        two.isHidden = two.isHidden || numberLabel.text == "Two"
        locationSelected.isHidden = true
    }
    
    /// Hide All Numbers
    /// - Right now all numbers textfields are not links, so will hide specific one
    func hideAllNumberTextFields() {
        three.isHidden = false
        two.isHidden = false
        four.isHidden = false
    }
}
