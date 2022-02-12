//
//  Rules.swift
//  Pai Gow
//
//  Created by Aaron Fleming on 5/21/21.
//

import Foundation

import UIKit

class PayoutsThirtyFive: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var label = [("1 : 35"),("6 : 210"),("11 : 385"),("16 : 560")]
    var labelTwo = [("2 : 70"),("7 : 245"),("12 : 420"),("17 : 595")]
    var labelThree = [("3 : 105"), ("8 : 280"),("13 : 455"),("18 : 630")]
    var labelFour = [("4 : 140"),("9 : 315"),("14 : 490"),("19 : 665")]
    var labelFive = [("5 : 175"),("10 : 350"),("15 : 525"),("20 : 700")]
    
    
    
    
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! TableViewCell6
        cell.labelOne.text = self.label[indexPath.row]
        cell.labelTwo.text = self.labelTwo[indexPath.row]
        cell.labelThree.text = self.labelThree[indexPath.row]
        cell.labelFour.text = self.labelFour[indexPath.row]
        cell.labelFive.text = self.labelFive[indexPath.row]
        return cell
    }
}

class TableViewCell6: UITableViewCell {
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



