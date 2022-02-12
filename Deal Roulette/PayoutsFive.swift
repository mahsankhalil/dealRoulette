//
//  Rules.swift
//  Pai Gow
//
//  Created by Aaron Fleming on 5/21/21.
//

import Foundation

import UIKit

class Payouts: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var label = [("1 : 5"),("6 : 30"),("11 : 55"),("16 : 80")]
    var labelTwo = [("2 : 10"),("7 : 35"),("12 : 60"),("17 : 85")]
    var labelThree = [("3 : 15"), ("8 : 40"),("13 : 65"),("18 : 90")]
    var labelFour = [("4 : 20"),("9 : 45"),("14 : 70"),("19 : 95")]
    var labelFive = [("5 : 25"),("10 : 50"),("15 : 75"),("20 : 100")]
    
    
    
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! TableViewCell
        cell.labelOne.text = self.label[indexPath.row]
        cell.labelTwo.text = self.labelTwo[indexPath.row]
        cell.labelThree.text = self.labelThree[indexPath.row]
        cell.labelFour.text = self.labelFour[indexPath.row]
        cell.labelFive.text = self.labelFive[indexPath.row]
        return cell
    }
}

class TableViewCell: UITableViewCell {
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


