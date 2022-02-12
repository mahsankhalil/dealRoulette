//
//  Rules.swift
//  Pai Gow
//
//  Created by Aaron Fleming on 5/21/21.
//

import Foundation

import UIKit

class PayoutsEleven: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var label = [("1 : 11"),("6 : 66"),("11 : 121"),("16 : 176")]
    var labelTwo = [("2 : 22"),("7 : 77"),("12 : 132"),("17 : 187")]
    var labelThree = [("3 : 33"), ("8 : 88"),("13 : 143"),("18 : 198")]
    var labelFour = [("4 : 44"),("9 : 99"),("14 : 154"),("19 : 209")]
    var labelFive = [("5 : 55"),("10 : 110"),("15 : 165"),("20 : 220")]
    
    
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! TableViewCell4
        cell.labelOne.text = self.label[indexPath.row]
        cell.labelTwo.text = self.labelTwo[indexPath.row]
        cell.labelThree.text = self.labelThree[indexPath.row]
        cell.labelFour.text = self.labelFour[indexPath.row]
        cell.labelFive.text = self.labelFive[indexPath.row]
        return cell
    }
}

class TableViewCell4: UITableViewCell {
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



