//
//  PictureBets.swift
//  Deal Roulette
//
//  Created by Aaron Fleming on 12/21/21.
//
import Foundation
import UIKit
import SwiftUI

class PayoutStacks: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate, UINavigationBarDelegate {
    
    var myControllers = [UIViewController]()

    @IBOutlet weak var homeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now(), execute: {
            self.presentPageVC()

        })
        
        if UIDevice.current.userInterfaceIdiom == .pad {

            func supportedInterfaceOrientations() -> Int {
                      return UIInterfaceOrientation.landscapeRight.rawValue
                 }

            func shouldAutorotate() -> Bool {
                          return false
                  }

            }
        
        let greenColor = UIColor(rgb: 0x006800)
        
        let vc = UIViewController()
            vc.view.backgroundColor = greenColor
            myControllers.append(vc)
        
            let myImageView:UIImageView = UIImageView()
            let catImage = UIImage(named: "twoStacks.jpg")
            let pageCurlView:UIImageView = UIImageView()
            let pageCurl = UIImage(named: "pageCurl.jpg")
            let yourLabel: UILabel = UILabel()
            
            vc.view.addSubview(myImageView)
            vc.view.addSubview(pageCurlView)
            vc.view.addSubview(yourLabel)
        
            myImageView.image = catImage
            myImageView.translatesAutoresizingMaskIntoConstraints = false
            pageCurlView.image = pageCurl
            pageCurlView.translatesAutoresizingMaskIntoConstraints = false
            yourLabel.translatesAutoresizingMaskIntoConstraints = false
        
            yourLabel.frame = CGRect(x: 50, y: 150, width: 500, height: 21)
            yourLabel.textColor = UIColor.white
            yourLabel.textAlignment = NSTextAlignment.center
            yourLabel.text = "Number Of Stacks = 2 / Chip Count = 40"
            yourLabel.font = UIFont(name:"courier", size: 25.0)
            
            let horizontalConstraint1 = myImageView.centerXAnchor.constraint(equalTo: vc.view.centerXAnchor)
            let verticalConstraint1 = myImageView.centerYAnchor.constraint(equalTo: vc.view.centerYAnchor)
            let widthConstraint1 = myImageView.widthAnchor.constraint(equalToConstant: 100)
            let heightConstraint1 = myImageView.heightAnchor.constraint(equalToConstant: 100)
            let curlConstraintRight = pageCurlView.rightAnchor.constraint(equalTo: vc.view.rightAnchor)
            let curlConstraintBottom = pageCurlView.bottomAnchor.constraint(equalTo: vc.view.bottomAnchor)
            let curlConstraintWidth = pageCurlView.widthAnchor.constraint(equalToConstant: 125)
            let curlConstraintHeight = pageCurlView.heightAnchor.constraint(equalToConstant: 125)
            let labelCenter = yourLabel.centerXAnchor.constraint(equalTo: vc.view.centerXAnchor)
            let labelTop = yourLabel.topAnchor.constraint(equalTo: vc.view.topAnchor, constant: 50)
            vc.view.addConstraints([horizontalConstraint1, verticalConstraint1, widthConstraint1, heightConstraint1, curlConstraintRight, curlConstraintBottom, curlConstraintWidth, curlConstraintHeight, labelCenter, labelTop])
        
        let height: CGFloat = 50
        var statusBarHeight: CGFloat = 0
        if #available(iOS 13.0, *) {
            statusBarHeight = vc.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
            } else {
            statusBarHeight = UIApplication.shared.statusBarFrame.height
        }
        let navbar = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight, width: UIScreen.main.bounds.width, height: height))
        navbar.barTintColor = greenColor
        navbar.isTranslucent = false
        navbar.delegate = self
        
        if let rightBarButtonItem = navigationItem.rightBarButtonItem {
            rightBarButtonItem.target = self
            rightBarButtonItem.action = #selector(homeTapped)
            navigationItem.hidesBackButton = true
        }
        
        navbar.items = [navigationItem]
        vc.view.addSubview(navbar)
        vc.view?.frame = CGRect(x: 0, y: height, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - height))
        
        vc.view.addSubview(homeButton)

        self.view = view

         let vc1 = UIViewController()
            vc1.view.backgroundColor = greenColor
            myControllers.append(vc1)
            let view2 = UIView()
            let catImage2 = UIImage(named: "threeStacks.jpg")
            let myImageView2:UIImageView = UIImageView()
            let pageCurlView2:UIImageView = UIImageView()
            let pageCurl2 = UIImage(named: "pageCurl.jpg")
            let yourLabel2: UILabel = UILabel()
    
            myImageView2.image = catImage2
            pageCurlView2.image = pageCurl2
            myImageView2.translatesAutoresizingMaskIntoConstraints = false
            pageCurlView2.translatesAutoresizingMaskIntoConstraints = false
            yourLabel2.translatesAutoresizingMaskIntoConstraints = false
            vc1.view.addSubview(pageCurlView2)
            vc1.view.addSubview(yourLabel2)
            vc1.view.addSubview(myImageView2)
            vc1.view.addSubview(homeButton)
        
            yourLabel2.frame = CGRect(x: 50, y: 150, width: 500, height: 21)
            yourLabel2.textColor = UIColor.white
            yourLabel2.textAlignment = NSTextAlignment.center
            yourLabel2.text = "Number Of Stacks = 3 / Chip Count = 60"
            yourLabel2.font = UIFont(name:"courier", size: 25.0)
        
            let horizontalConstraint2 = myImageView2.centerXAnchor.constraint(equalTo: vc1.view.centerXAnchor)
            let verticalConstraint2 = myImageView2.centerYAnchor.constraint(equalTo: vc1.view.centerYAnchor)
            let widthConstraint2 = myImageView2.widthAnchor.constraint(equalToConstant: 115)
            let heightConstraint2 = myImageView2.heightAnchor.constraint(equalToConstant: 115)
            let curlConstraintRight2 = pageCurlView2.rightAnchor.constraint(equalTo: vc1.view.rightAnchor)
            let curlConstraintBottom2 = pageCurlView2.bottomAnchor.constraint(equalTo: vc1.view.bottomAnchor)
            let curlConstraintWidth2 = pageCurlView2.widthAnchor.constraint(equalToConstant: 125)
            let curlConstraintHeight2 = pageCurlView2.heightAnchor.constraint(equalToConstant: 125)
            let labelCenter2 = yourLabel2.centerXAnchor.constraint(equalTo: vc1.view.centerXAnchor)
            let labelTop2 = yourLabel2.topAnchor.constraint(equalTo: vc1.view.topAnchor, constant: 50)
            vc1.view.addConstraints([horizontalConstraint2, verticalConstraint2, widthConstraint2, heightConstraint2, curlConstraintRight2, curlConstraintBottom2, curlConstraintWidth2, curlConstraintHeight2, labelCenter2, labelTop2])
        
    let height2: CGFloat = 50
    var statusBarHeight2: CGFloat = 0
    if #available(iOS 13.0, *) {
        statusBarHeight2 = vc1.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        } else {
        statusBarHeight2 = UIApplication.shared.statusBarFrame.height
    }
    let navbar2 = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight2, width: UIScreen.main.bounds.width, height: height2))
    navbar2.barTintColor = greenColor
    navbar2.isTranslucent = false
    navbar2.delegate = self
    
    if let rightBarButtonItem2 = navigationItem.rightBarButtonItem {
        rightBarButtonItem2.target = self
        rightBarButtonItem2.action = #selector(homeTapped)
        navigationItem.hidesBackButton = true
    }
    
    navbar2.items = [navigationItem]
    vc1.view.addSubview(navbar2)
    vc1.view?.frame = CGRect(x: 0, y: height2, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - height2))
    //navbar2.topItem?.title = ("Number Of Stacks = 3 / Chip Count = 60")
    //navbar2.titleTextAttributes = [.foregroundColor: UIColor.white]
    self.view = view2
            
            let vc3 = UIViewController()
                vc3.view.backgroundColor = greenColor
                myControllers.append(vc3)
                let view3 = UIView()
                let catImage3 = UIImage(named: "fourStacks.jpg")
                let myImageView3:UIImageView = UIImageView()
                let pageCurlView3:UIImageView = UIImageView()
                let pageCurl3 = UIImage(named: "pageCurl.jpg")
                let yourLabel3: UILabel = UILabel()
            
                myImageView3.image = catImage3
                pageCurlView3.image = pageCurl3
                myImageView3.translatesAutoresizingMaskIntoConstraints = false
                pageCurlView3.translatesAutoresizingMaskIntoConstraints = false
                yourLabel3.translatesAutoresizingMaskIntoConstraints = false
                vc3.view.addSubview(pageCurlView3)
                vc3.view.addSubview(yourLabel3)
                vc3.view.addSubview(myImageView3)
                vc3.view.addSubview(homeButton)
                
                yourLabel3.frame = CGRect(x: 50, y: 150, width: 500, height: 21)
                yourLabel3.textColor = UIColor.white
                yourLabel3.textAlignment = NSTextAlignment.center
                yourLabel3.text = "Number Of Stacks = 4 / Chip Count = 80"
                yourLabel3.font = UIFont(name:"courier", size: 25.0)
        
        
                let horizontalConstraint3 = myImageView3.centerXAnchor.constraint(equalTo: vc3.view.centerXAnchor)
                let verticalConstraint3 = myImageView3.centerYAnchor.constraint(equalTo: vc3.view.centerYAnchor)
                let widthConstraint3 = myImageView3.widthAnchor.constraint(equalToConstant: 130)
                let heightConstraint3 = myImageView3.heightAnchor.constraint(equalToConstant: 130)
                let curlConstraintRight3 = pageCurlView3.rightAnchor.constraint(equalTo: vc3.view.rightAnchor)
                let curlConstraintBottom3 = pageCurlView3.bottomAnchor.constraint(equalTo: vc3.view.bottomAnchor)
                let curlConstraintWidth3 = pageCurlView3.widthAnchor.constraint(equalToConstant: 125)
                let curlConstraintHeight3 = pageCurlView3.heightAnchor.constraint(equalToConstant: 125)
                let labelCenter3 = yourLabel3.centerXAnchor.constraint(equalTo: vc3.view.centerXAnchor)
                let labelTop3 = yourLabel3.topAnchor.constraint(equalTo: vc3.view.topAnchor, constant: 50)
                vc3.view.addConstraints([horizontalConstraint3, verticalConstraint3, widthConstraint3, heightConstraint3, curlConstraintRight3, curlConstraintBottom3, curlConstraintWidth3, curlConstraintHeight3, labelCenter3, labelTop3])
    
    let height3: CGFloat = 50
    var statusBarHeight3: CGFloat = 0
    if #available(iOS 13.0, *) {
        statusBarHeight3 = vc.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        } else {
        statusBarHeight3 = UIApplication.shared.statusBarFrame.height
    }
    let navbar3 = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight3, width: UIScreen.main.bounds.width, height: height3))
    navbar3.barTintColor = greenColor
    navbar3.isTranslucent = false
    navbar3.delegate = self
    
    if let rightBarButtonItem3 = navigationItem.rightBarButtonItem {
        rightBarButtonItem3.target = self
        rightBarButtonItem3.action = #selector(homeTapped)
        navigationItem.hidesBackButton = true
    }
    
    navbar3.items = [navigationItem]
    vc3.view.addSubview(navbar3)
    vc3.view?.frame = CGRect(x: 0, y: height3, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - height3))
    self.view = view3
        
        let vc4 = UIViewController()
            vc4.view.backgroundColor = greenColor
            myControllers.append(vc4)
            let view4 = UIView()
            let myImageView4:UIImageView = UIImageView()
            let catImage4 = UIImage(named: "fiveStacks.jpg")
            let pageCurlView4:UIImageView = UIImageView()
            let pageCurl4 = UIImage(named: "pageCurl.jpg")
            let yourLabel4: UILabel = UILabel()
            
            myImageView4.image = catImage4
            pageCurlView4.image = pageCurl4
            myImageView4.translatesAutoresizingMaskIntoConstraints = false
            pageCurlView4.translatesAutoresizingMaskIntoConstraints = false
            yourLabel4.translatesAutoresizingMaskIntoConstraints = false
            vc4.view.addSubview(pageCurlView4)
            vc4.view.addSubview(yourLabel4)
            vc4.view.addSubview(myImageView4)
            vc4.view.addSubview(homeButton)
        
            yourLabel4.frame = CGRect(x: 50, y: 150, width: 500, height: 21)
            yourLabel4.textColor = UIColor.white
            yourLabel4.textAlignment = NSTextAlignment.center
            yourLabel4.text = "Number Of Stacks = 5 / Chip Count = 100"
            yourLabel4.font = UIFont(name:"courier", size: 25.0)
        
        let horizontalConstraint4 = myImageView4.centerXAnchor.constraint(equalTo: vc4.view.centerXAnchor)
        let verticalConstraint4 = myImageView4.centerYAnchor.constraint(equalTo: vc4.view.centerYAnchor)
        let widthConstraint4 = myImageView4.widthAnchor.constraint(equalToConstant: 145)
        let heightConstraint4 = myImageView4.heightAnchor.constraint(equalToConstant: 145)
        let curlConstraintRight4 = pageCurlView4.rightAnchor.constraint(equalTo: vc4.view.rightAnchor)
        let curlConstraintBottom4 = pageCurlView4.bottomAnchor.constraint(equalTo: vc4.view.bottomAnchor)
        let curlConstraintWidth4 = pageCurlView4.widthAnchor.constraint(equalToConstant: 125)
        let curlConstraintHeight4 = pageCurlView4.heightAnchor.constraint(equalToConstant: 125)
        let labelCenter4 = yourLabel4.centerXAnchor.constraint(equalTo: vc4.view.centerXAnchor)
        let labelTop4 = yourLabel4.topAnchor.constraint(equalTo: vc4.view.topAnchor, constant: 50)
        vc4.view.addConstraints([horizontalConstraint4, verticalConstraint4, widthConstraint4, heightConstraint4, curlConstraintRight4, curlConstraintBottom4, curlConstraintWidth4, curlConstraintHeight4, labelCenter4, labelTop4])
        
        let height4: CGFloat = 50
        var statusBarHeight4: CGFloat = 0
        if #available(iOS 13.0, *) {
            statusBarHeight4 = vc4.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
            } else {
            statusBarHeight4 = UIApplication.shared.statusBarFrame.height
        }
        let navbar4 = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight4, width: UIScreen.main.bounds.width, height: height4))
        navbar4.barTintColor = greenColor
        navbar4.isTranslucent = false
        navbar4.delegate = self
        
        if let rightBarButtonItem4 = navigationItem.rightBarButtonItem {
            rightBarButtonItem4.target = self
            rightBarButtonItem4.action = #selector(homeTapped)
            navigationItem.hidesBackButton = true
        }
        
        navbar4.items = [navigationItem]
        vc4.view.addSubview(navbar4)
        vc4.view?.frame = CGRect(x: 0, y: height4, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - height4))
        self.view = view4
            
        let vc5 = UIViewController()
            vc5.view.backgroundColor = greenColor
            myControllers.append(vc5)
            let view5 = UIView()
            let catImage5 = UIImage(named: "sixStacks.jpg")
            let myImageView5:UIImageView = UIImageView()
            let pageCurlView5:UIImageView = UIImageView()
            let pageCurl5 = UIImage(named: "pageCurl.jpg")
            let yourLabel5: UILabel = UILabel()
        
            myImageView5.image = catImage5
            pageCurlView5.image = pageCurl5
            myImageView5.translatesAutoresizingMaskIntoConstraints = false
            pageCurlView5.translatesAutoresizingMaskIntoConstraints = false
            yourLabel5.translatesAutoresizingMaskIntoConstraints = false
            vc5.view.addSubview(pageCurlView5)
            vc5.view.addSubview(yourLabel5)
            vc5.view.addSubview(homeButton)
            vc5.view.addSubview(myImageView5)
        
            yourLabel5.frame = CGRect(x: 50, y: 150, width: 500, height: 21)
            yourLabel5.textColor = UIColor.white
            yourLabel5.textAlignment = NSTextAlignment.center
            yourLabel5.text = "Number Of Stacks = 6 / Chip Count = 120"
            yourLabel5.font = UIFont(name:"courier", size: 25.0)
        
            let horizontalConstraint5 = myImageView5.centerXAnchor.constraint(equalTo: vc5.view.centerXAnchor)
            let verticalConstraint5 = myImageView5.centerYAnchor.constraint(equalTo: vc5.view.centerYAnchor)
            let widthConstraint5 = myImageView5.widthAnchor.constraint(equalToConstant: 160)
            let heightConstraint5 = myImageView5.heightAnchor.constraint(equalToConstant: 160)
            let curlConstraintRight5 = pageCurlView5.rightAnchor.constraint(equalTo: vc5.view.rightAnchor)
            let curlConstraintBottom5 = pageCurlView5.bottomAnchor.constraint(equalTo: vc5.view.bottomAnchor)
            let curlConstraintWidth5 = pageCurlView5.widthAnchor.constraint(equalToConstant: 125)
            let curlConstraintHeight5 = pageCurlView5.heightAnchor.constraint(equalToConstant: 125)
            let labelCenter5 = yourLabel5.centerXAnchor.constraint(equalTo: vc5.view.centerXAnchor)
            let labelTop5 = yourLabel5.topAnchor.constraint(equalTo: vc5.view.topAnchor, constant: 50)
            vc5.view.addConstraints([horizontalConstraint5, verticalConstraint5, widthConstraint5, heightConstraint5, curlConstraintRight5, curlConstraintBottom5, curlConstraintWidth5, curlConstraintHeight5, labelCenter5, labelTop5])
            
    
    let height5: CGFloat = 50
    var statusBarHeight5: CGFloat = 0
    if #available(iOS 13.0, *) {
        statusBarHeight5 = vc5.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        } else {
        statusBarHeight5 = UIApplication.shared.statusBarFrame.height
    }
    let navbar5 = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight5, width: UIScreen.main.bounds.width, height: height5))
    navbar5.barTintColor = greenColor
    navbar5.isTranslucent = false
    navbar5.delegate = self
    
    if let rightBarButtonItem5 = navigationItem.rightBarButtonItem {
        rightBarButtonItem5.target = self
        rightBarButtonItem5.action = #selector(homeTapped)
        navigationItem.hidesBackButton = true
    }
    
    navbar5.items = [navigationItem]
    vc5.view.addSubview(navbar5)
    vc5.view?.frame = CGRect(x: 0, y: height5, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - height5))
    self.view = view5
            
            let vc6 = UIViewController()
                vc6.view.backgroundColor = greenColor
                myControllers.append(vc6)
                let view6 = UIView()
                let catImage6 = UIImage(named: "sevenStacks.jpg")
                let myImageView6:UIImageView = UIImageView()
                let pageCurlView6:UIImageView = UIImageView()
                let pageCurl6 = UIImage(named: "pageCurl.jpg")
                let yourLabel6: UILabel = UILabel()
            
                myImageView6.image = catImage6
                pageCurlView6.image = pageCurl6
                myImageView6.translatesAutoresizingMaskIntoConstraints = false
                pageCurlView6.translatesAutoresizingMaskIntoConstraints = false
                yourLabel6.translatesAutoresizingMaskIntoConstraints = false
                vc6.view.addSubview(pageCurlView6)
                vc6.view.addSubview(yourLabel6)
                vc6.view.addSubview(myImageView6)
                vc6.view.addSubview(homeButton)
        
                yourLabel6.frame = CGRect(x: 50, y: 150, width: 500, height: 21)
                yourLabel6.textColor = UIColor.white
                yourLabel6.textAlignment = NSTextAlignment.center
                yourLabel6.text = "Number Of Stacks = 7 / Chip Count = 140"
                yourLabel6.font = UIFont(name:"courier", size: 25.0)
                
                let horizontalConstraint6 = myImageView6.centerXAnchor.constraint(equalTo: vc6.view.centerXAnchor)
                let verticalConstraint6 = myImageView6.centerYAnchor.constraint(equalTo: vc6.view.centerYAnchor)
                let widthConstraint6 = myImageView6.widthAnchor.constraint(equalToConstant: 175)
                let heightConstraint6 = myImageView6.heightAnchor.constraint(equalToConstant: 175)
                let curlConstraintRight6 = pageCurlView6.rightAnchor.constraint(equalTo: vc6.view.rightAnchor)
                let curlConstraintBottom6 = pageCurlView6.bottomAnchor.constraint(equalTo: vc6.view.bottomAnchor)
                let curlConstraintWidth6 = pageCurlView6.widthAnchor.constraint(equalToConstant: 125)
                let curlConstraintHeight6 = pageCurlView6.heightAnchor.constraint(equalToConstant: 125)
                let labelCenter6 = yourLabel6.centerXAnchor.constraint(equalTo: vc6.view.centerXAnchor)
                let labelTop6 = yourLabel6.topAnchor.constraint(equalTo: vc6.view.topAnchor, constant: 50)
                vc6.view.addConstraints([horizontalConstraint6, verticalConstraint6, widthConstraint6, heightConstraint6, curlConstraintRight6, curlConstraintBottom6, curlConstraintWidth6, curlConstraintHeight6, labelCenter6, labelTop6])
        
    
    let height6: CGFloat = 50
    var statusBarHeight6: CGFloat = 0
    if #available(iOS 13.0, *) {
        statusBarHeight6 = vc6.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        } else {
        statusBarHeight6 = UIApplication.shared.statusBarFrame.height
    }
    let navbar6 = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight6, width: UIScreen.main.bounds.width, height: height6))
    navbar6.barTintColor = greenColor
    navbar6.isTranslucent = false
    navbar6.delegate = self
    
    if let rightBarButtonItem6 = navigationItem.rightBarButtonItem {
        rightBarButtonItem6.target = self
        rightBarButtonItem6.action = #selector(homeTapped)
        navigationItem.hidesBackButton = true
    }
    
    navbar6.items = [navigationItem]
    vc6.view.addSubview(navbar6)
    vc6.view?.frame = CGRect(x: 0, y: height6, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - height6))
    self.view = view6
        
        let vc7 = UIViewController()
            vc7.view.backgroundColor = greenColor
            myControllers.append(vc7)
            let view7 = UIView()
            let myImageView7:UIImageView = UIImageView()
            let catImage7 = UIImage(named: "eightStacks.jpg")
            let pageCurlView7:UIImageView = UIImageView()
            let pageCurl7 = UIImage(named: "pageCurl.jpg")
            let yourLabel7: UILabel = UILabel()
            
            myImageView7.image = catImage7
            pageCurlView7.image = pageCurl7
            myImageView7.translatesAutoresizingMaskIntoConstraints = false
            pageCurlView7.translatesAutoresizingMaskIntoConstraints = false
            yourLabel7.translatesAutoresizingMaskIntoConstraints = false
            vc7.view.addSubview(pageCurlView7)
            vc7.view.addSubview(yourLabel7)
            vc7.view.addSubview(myImageView7)
            vc7.view.addSubview(homeButton)
        
            yourLabel7.frame = CGRect(x: 50, y: 150, width: 500, height: 21)
            yourLabel7.textColor = UIColor.white
            yourLabel7.textAlignment = NSTextAlignment.center
            yourLabel7.text = "Number Of Stacks = 8 / Chip Count = 160"
            yourLabel7.font = UIFont(name:"courier", size: 25.0)
        
            let horizontalConstraint7 = myImageView7.centerXAnchor.constraint(equalTo: vc7.view.centerXAnchor)
            let verticalConstraint7 = myImageView7.centerYAnchor.constraint(equalTo: vc7.view.centerYAnchor)
            let widthConstraint7 = myImageView7.widthAnchor.constraint(equalToConstant: 200)
            let heightConstraint7 = myImageView7.heightAnchor.constraint(equalToConstant: 200)
            let curlConstraintRight7 = pageCurlView7.rightAnchor.constraint(equalTo: vc7.view.rightAnchor)
            let curlConstraintBottom7 = pageCurlView7.bottomAnchor.constraint(equalTo: vc7.view.bottomAnchor)
            let curlConstraintWidth7 = pageCurlView7.widthAnchor.constraint(equalToConstant: 125)
            let curlConstraintHeight7 = pageCurlView7.heightAnchor.constraint(equalToConstant: 125)
            let labelCenter7 = yourLabel7.centerXAnchor.constraint(equalTo: vc7.view.centerXAnchor)
            let labelTop7 = yourLabel7.topAnchor.constraint(equalTo: vc7.view.topAnchor, constant: 50)
            vc7.view.addConstraints([horizontalConstraint7, verticalConstraint7, widthConstraint7, heightConstraint7, curlConstraintRight7, curlConstraintBottom7, curlConstraintWidth7, curlConstraintHeight7, labelCenter7, labelTop7])
        
        let height7: CGFloat = 50
        var statusBarHeight7: CGFloat = 0
        if #available(iOS 13.0, *) {
            statusBarHeight7 = vc7.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
            } else {
            statusBarHeight7 = UIApplication.shared.statusBarFrame.height
        }
        let navbar7 = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight7, width: UIScreen.main.bounds.width, height: height7))
        navbar7.barTintColor = greenColor
        navbar7.isTranslucent = false
        navbar7.delegate = self
        
        if let rightBarButtonItem7 = navigationItem.rightBarButtonItem {
            rightBarButtonItem7.target = self
            rightBarButtonItem7.action = #selector(homeTapped)
            navigationItem.hidesBackButton = true
        }
        
        navbar7.items = [navigationItem]
        vc7.view.addSubview(navbar7)
        vc7.view?.frame = CGRect(x: 0, y: height7, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - height7))
        self.view = view7
        
        let vc8 = UIViewController()
            vc8.view.backgroundColor = greenColor
            myControllers.append(vc8)
            let view8 = UIView()
            let myImageView8:UIImageView = UIImageView()
            let catImage8 = UIImage(named: "nineStacks.jpg")
            let pageCurlView8:UIImageView = UIImageView()
            let pageCurl8 = UIImage(named: "pageCurl.jpg")
            let yourLabel8: UILabel = UILabel()
            
            myImageView8.image = catImage8
            pageCurlView8.image = pageCurl8
            myImageView8.translatesAutoresizingMaskIntoConstraints = false
            pageCurlView8.translatesAutoresizingMaskIntoConstraints = false
            yourLabel8.translatesAutoresizingMaskIntoConstraints = false
            vc8.view.addSubview(pageCurlView8)
            vc8.view.addSubview(yourLabel8)
            vc8.view.addSubview(myImageView8)
            vc8.view.addSubview(homeButton)
        
            yourLabel8.frame = CGRect(x: 50, y: 150, width: 500, height: 21)
            yourLabel8.textColor = UIColor.white
            yourLabel8.textAlignment = NSTextAlignment.center
            yourLabel8.text = "Number Of Stacks = 9 / Chip Count = 180"
            yourLabel8.font = UIFont(name:"courier", size: 25.0)
        
            let horizontalConstraint8 = myImageView8.centerXAnchor.constraint(equalTo: vc8.view.centerXAnchor)
            let verticalConstraint8 = myImageView8.centerYAnchor.constraint(equalTo: vc8.view.centerYAnchor)
            let widthConstraint8 = myImageView8.widthAnchor.constraint(equalToConstant: 215)
            let heightConstraint8 = myImageView8.heightAnchor.constraint(equalToConstant: 215)
            let curlConstraintRight8 = pageCurlView8.rightAnchor.constraint(equalTo: vc8.view.rightAnchor)
            let curlConstraintBottom8 = pageCurlView8.bottomAnchor.constraint(equalTo: vc8.view.bottomAnchor)
            let curlConstraintWidth8 = pageCurlView8.widthAnchor.constraint(equalToConstant: 125)
            let curlConstraintHeight8 = pageCurlView8.heightAnchor.constraint(equalToConstant: 125)
            let labelCenter8 = yourLabel8.centerXAnchor.constraint(equalTo: vc8.view.centerXAnchor)
            let labelTop8 = yourLabel8.topAnchor.constraint(equalTo: vc8.view.topAnchor, constant: 50)
            vc8.view.addConstraints([horizontalConstraint8, verticalConstraint8, widthConstraint8, heightConstraint8, curlConstraintRight8, curlConstraintBottom8, curlConstraintWidth8, curlConstraintHeight8, labelCenter8, labelTop8])
        
        let height8: CGFloat = 50
        var statusBarHeight8: CGFloat = 0
        if #available(iOS 13.0, *) {
            statusBarHeight8 = vc8.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
            } else {
            statusBarHeight8 = UIApplication.shared.statusBarFrame.height
        }
        let navbar8 = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight8, width: UIScreen.main.bounds.width, height: height8))
        navbar8.barTintColor = greenColor
        navbar8.isTranslucent = false
        navbar8.delegate = self
        
        if let rightBarButtonItem8 = navigationItem.rightBarButtonItem {
            rightBarButtonItem8.target = self
            rightBarButtonItem8.action = #selector(homeTapped)
            navigationItem.hidesBackButton = true
        }
        
        navbar8.items = [navigationItem]
        vc8.view.addSubview(navbar8)
        vc8.view?.frame = CGRect(x: 0, y: height8, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - height8))
        self.view = view8
        
        let vc9 = UIViewController()
            vc9.view.backgroundColor = greenColor
            myControllers.append(vc9)
            let view9 = UIView()
            let myImageView9:UIImageView = UIImageView()
            let catImage9 = UIImage(named: "tenStacks.jpg")
            let yourLabel9: UILabel = UILabel()
        
            myImageView9.translatesAutoresizingMaskIntoConstraints = false
            yourLabel9.translatesAutoresizingMaskIntoConstraints = false
            

            myImageView9.image = catImage9
            
            vc9.view.addSubview(myImageView9)
            vc9.view.addSubview(homeButton)
            vc9.view.addSubview(yourLabel9)
        
            yourLabel9.frame = CGRect(x: 50, y: 150, width: 500, height: 21)
            yourLabel9.textColor = UIColor.white
            yourLabel9.textAlignment = NSTextAlignment.center
            yourLabel9.text = "Number Of Stacks = 10 / Chip Count = 200"
            yourLabel9.font = UIFont(name:"courier", size: 25.0)
        
            let horizontalConstraint9 = myImageView9.centerXAnchor.constraint(equalTo: vc9.view.centerXAnchor)
            let verticalConstraint9 = myImageView9.centerYAnchor.constraint(equalTo: vc9.view.centerYAnchor)
            let widthConstraint9 = myImageView9.widthAnchor.constraint(equalToConstant: 230)
            let heightConstraint9 = myImageView9.heightAnchor.constraint(equalToConstant: 230)
            let labelCenter9 = yourLabel9.centerXAnchor.constraint(equalTo: vc9.view.centerXAnchor)
            let labelTop9 = yourLabel9.topAnchor.constraint(equalTo: vc9.view.topAnchor, constant: 50)
            vc9.view.addConstraints([horizontalConstraint9, verticalConstraint9, widthConstraint9, heightConstraint9, labelCenter9, labelTop9])
        
        let height9: CGFloat = 50
        var statusBarHeight9: CGFloat = 0
        if #available(iOS 13.0, *) {
            statusBarHeight9 = vc9.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
            } else {
            statusBarHeight9 = UIApplication.shared.statusBarFrame.height
        }
        let navbar9 = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight9, width: UIScreen.main.bounds.width, height: height9))
        navbar9.barTintColor = greenColor
        navbar9.isTranslucent = false
        navbar9.delegate = self
        
        if let rightBarButtonItem9 = navigationItem.rightBarButtonItem {
            rightBarButtonItem9.target = self
            rightBarButtonItem9.action = #selector(homeTapped)
            navigationItem.hidesBackButton = true
        }
        
        navbar9.items = [navigationItem]
        vc9.view.addSubview(navbar9)
        vc9.view?.frame = CGRect(x: 0, y: height9, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - height9))
        self.view = view9
    
    }
         
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    @objc func homeTapped() {
    print ("please Father")
    performSegue(withIdentifier: "HomePage", sender: self)
    }
    
    
    func presentPageVC () {
        guard let first = myControllers.first
        else {
            return
        }
        let vc =
        UIPageViewController(transitionStyle: .pageCurl, navigationOrientation: .horizontal, options: nil)
        vc.delegate = self
        vc.dataSource = self
        vc.setViewControllers([first], direction: .forward,
                              animated: true, completion: nil)
        present(vc, animated: true)
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = myControllers.firstIndex(of: viewController ), index > 0 else {
        return nil
        }
        let before = index - 1
        return myControllers[before]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = myControllers.firstIndex(of: viewController ), index < (myControllers.count - 1) else {
        return nil
        }
        let after = index + 1
        return myControllers[after]
    }
}
