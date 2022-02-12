//
//  Rules.swift
//  Pai Gow
//
//  Created by Aaron Fleming on 5/21/21.
//

import Foundation

import UIKit

class Tricks: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var label = ["Trick One ~ 35 : 1 Payouts = Total Number Of Straight Up Chips Divided By Two * Seven. Add A Zero. When You Have An Odd Number Of Straight Up Chips. Round Down By One To Make It Even And Apply This Key. Remember To Add 35 To The Result To Accommodate For Rounding The Number Down.", "Trick Two ~ 17 : 1 Payouts = For the split bets that pay 17 : 1 you’re best to know your time’s tables from 1 - 10. This will allow for you to double that number whenever you have more than 10 splits to pay out. Round Odd Numbers Down By One And Add 17 To Account For This.", "Trick Three = The way a dealer adds the payouts is another trick worth noting. Roulette dealers look for patterns in the placement of chips which make it easier to calculate the payout for each player. * See Home Page Menu Item ( Picture Bets )."]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0);
        self.tableView.rowHeight = 100.0


    }
    override func viewWillAppear(_ animated: Bool) {
            navigationItem.title = "Tricks"
        }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return label.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! TableViewCell7
        cell.labelOne.text = self.label[indexPath.row]
        return cell
    }
}

class TableViewCell7: UITableViewCell {
    @IBOutlet weak var labelOne: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib() // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}



