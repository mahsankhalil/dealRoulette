//
//  Rules.swift
//  Pai Gow
//
//  Created by Aaron Fleming on 5/21/21.
//

import Foundation

import UIKit

class PayoutsEight: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var label = [("1 : 8"),("6 : 48"),("11 : 88"),("16 : 128")]
    var labelTwo = [("2 : 16"),("7 : 56"),("12 : 96"),("17 : 136")]
    var labelThree = [("3 : 24"), ("8 : 64"),("13 : 104"),("18 : 144")]
    var labelFour = [("4 : 32"),("9 : 72"),("14 : 112"),("19 : 152")]
    var labelFive = [("5 : 40"),("10 : 80"),("15 : 120"),("20 : 160")]
    
    
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! TableViewCell3
        cell.labelOne.text = self.label[indexPath.row]
        cell.labelTwo.text = self.labelTwo[indexPath.row]
        cell.labelThree.text = self.labelThree[indexPath.row]
        cell.labelFour.text = self.labelFour[indexPath.row]
        cell.labelFive.text = self.labelFive[indexPath.row]
        return cell
    }
}

class TableViewCell3: UITableViewCell {
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


