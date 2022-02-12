//
//  Rules.swift
//  Pai Gow
//
//  Created by Aaron Fleming on 5/21/21.
//

import Foundation

import UIKit

class PayoutsSeventeen: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var label = [("1 : 17"),("6 : 102"),("11 : 187"),("16 : 272")]
    var labelTwo = [("2 : 34"),("7 : 119"),("12 : 204"),("17 : 289")]
    var labelThree = [("3 : 51"), ("8 : 136"),("13 : 221"),("18 : 306")]
    var labelFour = [("4 : 68"),("9 : 153"),("14 : 238"),("19 : 323")]
    var labelFive = [("5 : 85"),("10 : 170"),("15 : 255"),("20 : 340")]
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0);
        self.tableView.rowHeight = 61.0


    }
    override func viewWillAppear(_ animated: Bool) {
            navigationItem.title = "Payouts"
        }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return label.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! TableViewCell5
        cell.labelOne.text = self.label[indexPath.row]
        cell.labelTwo.text = self.labelTwo[indexPath.row]
        cell.labelThree.text = self.labelThree[indexPath.row]
        cell.labelFour.text = self.labelFour[indexPath.row]
        cell.labelFive.text = self.labelFive[indexPath.row]
        return cell
    }
}

class TableViewCell5: UITableViewCell {
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib() // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}



