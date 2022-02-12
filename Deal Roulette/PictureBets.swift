//
//  PictureBets.swift
//  Deal Roulette
//
//  Created by Aaron Fleming on 12/21/21.
//

import UIKit

class PictureBets: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate, UINavigationBarDelegate {
    
    var myControllers = [UIViewController]()
    
    @IBOutlet weak var homeButton: UIButton!
    
    let button = UIButton(type: .custom) as UIButton
    let button2 = UIButton(type: .custom) as UIButton
    let button3 = UIButton(type: .custom) as UIButton
    let button4 = UIButton(type: .custom) as UIButton
    let button5 = UIButton(type: .custom) as UIButton
    let button6 = UIButton(type: .custom) as UIButton
    let button7 = UIButton(type: .custom) as UIButton
    let button8 = UIButton(type: .custom) as UIButton
    let button9 = UIButton(type: .custom) as UIButton
    let button10 = UIButton(type: .custom) as UIButton
    let button11 = UIButton(type: .custom) as UIButton
    let button12 = UIButton(type: .custom) as UIButton
    let button13 = UIButton(type: .custom) as UIButton
    let button14 = UIButton(type: .custom) as UIButton
    
    var isBackImageOpen = false
    var isBackImageOpen2 = false
    var isBackImageOpen3 = false
    var isBackImageOpen4 = false
    var isBackImageOpen5 = false
    var isBackImageOpen6 = false
    var isBackImageOpen7 = false
    var isBackImageOpen8 = false
    var isBackImageOpen9 = false
    var isBackImageOpen10 = false
    var isBackImageOpen11 = false
    var isBackImageOpen12 = false
    var isBackImageOpen13 = false
    var isBackImageOpen14 = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now(), execute: {
            self.presentPageVC()
        })
        
        let greenColor = UIColor(rgb: 0x006800)
        
        let vc = UIViewController()
            vc.view.backgroundColor = greenColor
            myControllers.append(vc)
            let view = UIView()
            let pageCurlView:UIImageView = UIImageView()
            let pageCurl = UIImage(named: "pageCurl.jpg")
        
            vc.view.addSubview(button)
            vc.view.addSubview(homeButton)
            vc.view.addSubview(pageCurlView)
        
            pageCurlView.image = pageCurl
            pageCurlView.translatesAutoresizingMaskIntoConstraints = false
        
            let image = UIImage(named: "jesusAge")
            button.setImage(image, for: .normal)
            UIView.transition(with: button, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            button.addTarget(self, action: #selector(flipper), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
        
            let tapLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            tapLabel.textColor = .white
            tapLabel.text = "Tap Image To View An Alternate"
            tapLabel.translatesAutoresizingMaskIntoConstraints = false
        
            vc.view.addSubview(tapLabel)
        
            let title = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            title.textColor = .white
            title.text = "Jesus Age = 33"
            title.translatesAutoresizingMaskIntoConstraints = false
    
            vc.view.addSubview(title)
        
            let titlehorizontal = title.centerXAnchor.constraint(equalTo: vc.view.centerXAnchor)
            let titleTop = title.topAnchor.constraint(equalTo: vc.view.topAnchor, constant: 50)
        
            let bottom = tapLabel.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 15)
            let tapLabelhorizontal = tapLabel.centerXAnchor.constraint(equalTo: vc.view.centerXAnchor)
            let horizontalConstraint = button.centerXAnchor.constraint(equalTo: vc.view.centerXAnchor)
            let verticalConstraint = button.centerYAnchor.constraint(equalTo: vc.view.centerYAnchor)
            let widthConstraint = button.widthAnchor.constraint(equalToConstant: 250)
            let heightConstraint = button.heightAnchor.constraint(equalToConstant: 250)
            let curlConstraintRight = pageCurlView.rightAnchor.constraint(equalTo: vc.view.rightAnchor)
            let curlConstraintBottom = pageCurlView.bottomAnchor.constraint(equalTo: vc.view.bottomAnchor)
            let curlConstraintWidth = pageCurlView.widthAnchor.constraint(equalToConstant: 125)
            let curlConstraintHeight = pageCurlView.heightAnchor.constraint(equalToConstant: 125)
            vc.view.addConstraints([titleTop, titlehorizontal, horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint, tapLabelhorizontal, bottom, curlConstraintRight, curlConstraintBottom, curlConstraintWidth, curlConstraintHeight])
            
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

        self.view = view
        
        let vc2 = UIViewController()
            vc2.view.backgroundColor = greenColor
            myControllers.append(vc2)
            let view2 = UIView()
            let pageCurlView2:UIImageView = UIImageView()
            let pageCurl2 = UIImage(named: "pageCurl.jpg")
        
            vc2.view.addSubview(button2)
            vc2.view.addSubview(homeButton)
            vc2.view.addSubview(pageCurlView2)
        
            pageCurlView2.image = pageCurl2
            pageCurlView2.translatesAutoresizingMaskIntoConstraints = false
        
            let image2 = UIImage(named: "deckOfCards")
            button2.setImage(image2, for: .normal)
            UIView.transition(with: button2, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            button2.addTarget(self, action: #selector(flipper2), for: .touchUpInside)
            button2.translatesAutoresizingMaskIntoConstraints = false
        
            let tapLabel2 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            tapLabel2.textColor = .white
            tapLabel2.text = "Tap Image To View An Alternate"
            tapLabel2.translatesAutoresizingMaskIntoConstraints = false
        
            let title2 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            title2.textColor = .white
            title2.text = "Deck Of Cards = 52"
            title2.translatesAutoresizingMaskIntoConstraints = false

            vc2.view.addSubview(title2)
    
            let titlehorizontal2 = title2.centerXAnchor.constraint(equalTo: vc2.view.centerXAnchor)
            let titleTop2 = title2.topAnchor.constraint(equalTo: vc2.view.topAnchor, constant: 50)
        
            vc2.view.addSubview(tapLabel2)
        
            let bottom2 = tapLabel2.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 15)
            let tapLabelhorizontal2 = tapLabel2.centerXAnchor.constraint(equalTo: vc2.view.centerXAnchor)
        
            let horizontalConstraint2 = button2.centerXAnchor.constraint(equalTo: vc2.view.centerXAnchor)
            let verticalConstraint2 = button2.centerYAnchor.constraint(equalTo: vc2.view.centerYAnchor)
            let widthConstraint2 = button2.widthAnchor.constraint(equalToConstant: 250)
            let heightConstraint2 = button2.heightAnchor.constraint(equalToConstant: 250)
            let curlConstraintRight2 = pageCurlView2.rightAnchor.constraint(equalTo: vc2.view.rightAnchor)
            let curlConstraintBottom2 = pageCurlView2.bottomAnchor.constraint(equalTo: vc2.view.bottomAnchor)
            let curlConstraintWidth2 = pageCurlView2.widthAnchor.constraint(equalToConstant: 125)
            let curlConstraintHeight2 = pageCurlView2.heightAnchor.constraint(equalToConstant: 125)
            vc2.view.addConstraints([titleTop2, titlehorizontal2, horizontalConstraint2, verticalConstraint2, widthConstraint2, heightConstraint2, tapLabelhorizontal2, bottom2, curlConstraintRight2, curlConstraintBottom2, curlConstraintWidth2, curlConstraintHeight2])
            
        let height2: CGFloat = 50
        var statusBarHeight2 : CGFloat = 0
        if #available(iOS 13.0, *) {
            statusBarHeight2 = vc2.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
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
        vc2.view.addSubview(navbar2)
        vc2.view?.frame = CGRect(x: 0, y: height2, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - height2))

        self.view = view2
        
        let vc3 = UIViewController()
            vc3.view.backgroundColor = greenColor
            myControllers.append(vc3)
            let view3 = UIView()
            let pageCurlView3:UIImageView = UIImageView()
            let pageCurl3 = UIImage(named: "pageCurl.jpg")
        
            vc3.view.addSubview(button3)
            vc3.view.addSubview(homeButton)
            vc3.view.addSubview(pageCurlView3)
        
            pageCurlView3.image = pageCurl3
            pageCurlView3.translatesAutoresizingMaskIntoConstraints = false
        
            let image3 = UIImage(named: "mickeyMouseEars")
            button3.setImage(image3, for: .normal)
            UIView.transition(with: button3, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            button3.addTarget(self, action: #selector(flipper3), for: .touchUpInside)
            button3.translatesAutoresizingMaskIntoConstraints = false
        
            let tapLabel3 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            tapLabel3.textColor = .white
            tapLabel3.text = "Tap Image To View An Alternate"
            tapLabel3.translatesAutoresizingMaskIntoConstraints = false
        
            let title3 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            title3.textColor = .white
            title3.text = "Mickey Mouse Ears = 51"
            title3.translatesAutoresizingMaskIntoConstraints = false

            vc3.view.addSubview(title3)
    
            let titlehorizontal3 = title3.centerXAnchor.constraint(equalTo: vc3.view.centerXAnchor)
            let titleTop3 = title3.topAnchor.constraint(equalTo: vc3.view.topAnchor, constant: 50)
        
            vc3.view.addSubview(tapLabel3)
        
            let bottom3 = tapLabel3.topAnchor.constraint(equalTo: button3.bottomAnchor, constant: 15)
            let tapLabelhorizontal3 = tapLabel3.centerXAnchor.constraint(equalTo: vc3.view.centerXAnchor)
        
            let horizontalConstraint3 = button3.centerXAnchor.constraint(equalTo: vc3.view.centerXAnchor)
            let verticalConstraint3 = button3.centerYAnchor.constraint(equalTo: vc3.view.centerYAnchor)
            let widthConstraint3 = button3.widthAnchor.constraint(equalToConstant: 250)
            let heightConstraint3 = button3.heightAnchor.constraint(equalToConstant: 250)
            let curlConstraintRight3 = pageCurlView3.rightAnchor.constraint(equalTo: vc3.view.rightAnchor)
            let curlConstraintBottom3 = pageCurlView3.bottomAnchor.constraint(equalTo: vc3.view.bottomAnchor)
            let curlConstraintWidth3 = pageCurlView3.widthAnchor.constraint(equalToConstant: 125)
            let curlConstraintHeight3 = pageCurlView3.heightAnchor.constraint(equalToConstant: 125)
            vc3.view.addConstraints([titlehorizontal3, titleTop3, horizontalConstraint3, verticalConstraint3, widthConstraint3, heightConstraint3, tapLabelhorizontal3, bottom3, curlConstraintRight3, curlConstraintBottom3, curlConstraintWidth3, curlConstraintHeight3])
            
        let height3: CGFloat = 50
        var statusBarHeight3: CGFloat = 0
        if #available(iOS 13.0, *) {
            statusBarHeight3 = vc3.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
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
            let pageCurlView4:UIImageView = UIImageView()
            let pageCurl4 = UIImage(named: "pageCurl.jpg")
        
            vc4.view.addSubview(button4)
            vc4.view.addSubview(homeButton)
            vc4.view.addSubview(pageCurlView4)
        
            pageCurlView4.image = pageCurl4
            pageCurlView4.translatesAutoresizingMaskIntoConstraints = false
        
            let image4 = UIImage(named: "railroad")
            button4.setImage(image4, for: .normal)
            UIView.transition(with: button4, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            button4.addTarget(self, action: #selector(flipper4), for: .touchUpInside)
            button4.translatesAutoresizingMaskIntoConstraints = false
        
            let tapLabel4 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            tapLabel4.textColor = .white
            tapLabel4.text = "Tap Image To View An Alternate"
            tapLabel4.translatesAutoresizingMaskIntoConstraints = false
        
            vc4.view.addSubview(tapLabel4)
        
            let title4 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            title4.textColor = .white
            title4.text = "Railroad = 102"
            title4.translatesAutoresizingMaskIntoConstraints = false

            vc4.view.addSubview(title4)
    
            let titlehorizontal4 = title4.centerXAnchor.constraint(equalTo: vc4.view.centerXAnchor)
            let titleTop4 = title4.topAnchor.constraint(equalTo: vc4.view.topAnchor, constant: 50)
        
            let bottom4 = tapLabel4.topAnchor.constraint(equalTo: button4.bottomAnchor, constant: 15)
            let tapLabelhorizontal4 = tapLabel4.centerXAnchor.constraint(equalTo: vc4.view.centerXAnchor)
        
            let horizontalConstraint4 = button4.centerXAnchor.constraint(equalTo: vc4.view.centerXAnchor)
            let verticalConstraint4 = button4.centerYAnchor.constraint(equalTo: vc4.view.centerYAnchor)
            let widthConstraint4 = button4.widthAnchor.constraint(equalToConstant: 250)
            let heightConstraint4 = button4.heightAnchor.constraint(equalToConstant: 250)
            let curlConstraintRight4 = pageCurlView4.rightAnchor.constraint(equalTo: vc4.view.rightAnchor)
            let curlConstraintBottom4 = pageCurlView4.bottomAnchor.constraint(equalTo: vc4.view.bottomAnchor)
            let curlConstraintWidth4 = pageCurlView4.widthAnchor.constraint(equalToConstant: 125)
            let curlConstraintHeight4 = pageCurlView4.heightAnchor.constraint(equalToConstant: 125)
            vc4.view.addConstraints([titlehorizontal4, titleTop4, horizontalConstraint4, verticalConstraint4, widthConstraint4, heightConstraint4, tapLabelhorizontal4, bottom4, curlConstraintRight4, curlConstraintBottom4, curlConstraintWidth4, curlConstraintHeight4])
            
            
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
            let pageCurlView5:UIImageView = UIImageView()
            let pageCurl5 = UIImage(named: "pageCurl.jpg")
        
            vc5.view.addSubview(button5)
            vc5.view.addSubview(homeButton)
            vc5.view.addSubview(pageCurlView5)
        
            pageCurlView5.image = pageCurl5
            pageCurlView5.translatesAutoresizingMaskIntoConstraints = false
        
            let image5 = UIImage(named: "box")
            button5.setImage(image5, for: .normal)
            UIView.transition(with: button5, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            button5.addTarget(self, action: #selector(flipper5), for: .touchUpInside)
            button5.translatesAutoresizingMaskIntoConstraints = false
        
            let tapLabel5 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            tapLabel5.textColor = .white
            tapLabel5.text = "Tap Image To View An Alternate"
            tapLabel5.translatesAutoresizingMaskIntoConstraints = false
        
            vc5.view.addSubview(tapLabel5)
        
            let title5 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            title5.textColor = .white
            title5.text = "Box = 77"
            title5.translatesAutoresizingMaskIntoConstraints = false

            vc5.view.addSubview(title5)
    
            let titlehorizontal5 = title5.centerXAnchor.constraint(equalTo: vc5.view.centerXAnchor)
            let titleTop5 = title5.topAnchor.constraint(equalTo: vc5.view.topAnchor, constant: 50)
        
        let bottom5 = tapLabel5.topAnchor.constraint(equalTo: button5.bottomAnchor, constant: 15)
            let tapLabelhorizontal5 = tapLabel5.centerXAnchor.constraint(equalTo: vc5.view.centerXAnchor)
        
            let horizontalConstraint5 = button5.centerXAnchor.constraint(equalTo: vc5.view.centerXAnchor)
            let verticalConstraint5 = button5.centerYAnchor.constraint(equalTo: vc5.view.centerYAnchor)
            let widthConstraint5 = button5.widthAnchor.constraint(equalToConstant: 250)
            let heightConstraint5 = button5.heightAnchor.constraint(equalToConstant: 250)
        let curlConstraintRight5 = pageCurlView5.rightAnchor.constraint(equalTo: vc5.view.rightAnchor)
        let curlConstraintBottom5 = pageCurlView5.bottomAnchor.constraint(equalTo: vc5.view.bottomAnchor)
        let curlConstraintWidth5 = pageCurlView5.widthAnchor.constraint(equalToConstant: 125)
        let curlConstraintHeight5 = pageCurlView5.heightAnchor.constraint(equalToConstant: 125)
        vc5.view.addConstraints([titleTop5, titlehorizontal5, horizontalConstraint5, verticalConstraint5, widthConstraint5, heightConstraint5, tapLabelhorizontal5, bottom5, curlConstraintRight5, curlConstraintBottom5, curlConstraintWidth5, curlConstraintHeight5])
            
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
            let pageCurlView6:UIImageView = UIImageView()
            let pageCurl6 = UIImage(named: "pageCurl.jpg")
        
            vc6.view.addSubview(button6)
            vc6.view.addSubview(homeButton)
            vc6.view.addSubview(pageCurlView6)
        
            pageCurlView6.image = pageCurl6
            pageCurlView6.translatesAutoresizingMaskIntoConstraints = false
        
            let image6 = UIImage(named: "cornerPocket")
            button6.setImage(image6, for: .normal)
            UIView.transition(with: button6, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            button6.addTarget(self, action: #selector(flipper6), for: .touchUpInside)
            button6.translatesAutoresizingMaskIntoConstraints = false
        
            let tapLabel6 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            tapLabel6.textColor = .white
            tapLabel6.text = "Tap Image To View An Alternate"
            tapLabel6.translatesAutoresizingMaskIntoConstraints = false
        
            vc6.view.addSubview(tapLabel6)
        
            let title6 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            title6.textColor = .white
            title6.text = "Corner Pocket = 43"
            title6.translatesAutoresizingMaskIntoConstraints = false

            vc6.view.addSubview(title6)
    
            let titlehorizontal6 = title6.centerXAnchor.constraint(equalTo: vc6.view.centerXAnchor)
            let titleTop6 = title6.topAnchor.constraint(equalTo: vc6.view.topAnchor, constant: 50)
        
        let bottom6 = tapLabel6.topAnchor.constraint(equalTo: button6.bottomAnchor, constant: 15)
            let tapLabelhorizontal6 = tapLabel6.centerXAnchor.constraint(equalTo: vc6.view.centerXAnchor)
        
            let horizontalConstraint6 = button6.centerXAnchor.constraint(equalTo: vc6.view.centerXAnchor)
            let verticalConstraint6 = button6.centerYAnchor.constraint(equalTo: vc6.view.centerYAnchor)
            let widthConstraint6 = button6.widthAnchor.constraint(equalToConstant: 250)
            let heightConstraint6 = button6.heightAnchor.constraint(equalToConstant: 250)
        let curlConstraintRight6 = pageCurlView6.rightAnchor.constraint(equalTo: vc6.view.rightAnchor)
        let curlConstraintBottom6 = pageCurlView6.bottomAnchor.constraint(equalTo: vc6.view.bottomAnchor)
        let curlConstraintWidth6 = pageCurlView6.widthAnchor.constraint(equalToConstant: 125)
        let curlConstraintHeight6 = pageCurlView6.heightAnchor.constraint(equalToConstant: 125)
        vc6.view.addConstraints([titlehorizontal6, titleTop6, horizontalConstraint6, verticalConstraint6, widthConstraint6, heightConstraint6, tapLabelhorizontal6, bottom6, curlConstraintRight6, curlConstraintBottom6, curlConstraintWidth6, curlConstraintHeight6])
            
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
            let pageCurlView7:UIImageView = UIImageView()
            let pageCurl7 = UIImage(named: "pageCurl.jpg")
        
            vc7.view.addSubview(button7)
            vc7.view.addSubview(homeButton)
            vc7.view.addSubview(pageCurlView7)
        
            pageCurlView7.image = pageCurl7
            pageCurlView7.translatesAutoresizingMaskIntoConstraints = false
        
            let image7 = UIImage(named: "plusPattern")
            button7.setImage(image7, for: .normal)
            UIView.transition(with: button7, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            button7.addTarget(self, action: #selector(flipper7), for: .touchUpInside)
            button7.translatesAutoresizingMaskIntoConstraints = false
        
            let tapLabel7 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            tapLabel7.textColor = .white
            tapLabel7.text = "Tap Image To View An Alternate"
            tapLabel7.translatesAutoresizingMaskIntoConstraints = false
        
            vc7.view.addSubview(tapLabel7)
        
            let title7 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            title7.textColor = .white
            title7.text = "Plus Pattern = 103"
            title7.translatesAutoresizingMaskIntoConstraints = false

            vc7.view.addSubview(title7)
    
            let titlehorizontal7 = title7.centerXAnchor.constraint(equalTo: vc7.view.centerXAnchor)
            let titleTop7 = title7.topAnchor.constraint(equalTo: vc7.view.topAnchor, constant: 50)
        
        let bottom7 = tapLabel7.topAnchor.constraint(equalTo: button7.bottomAnchor, constant: 15)
            let tapLabelhorizontal7 = tapLabel7.centerXAnchor.constraint(equalTo: vc7.view.centerXAnchor)
        
            let horizontalConstraint7 = button7.centerXAnchor.constraint(equalTo: vc7.view.centerXAnchor)
            let verticalConstraint7 = button7.centerYAnchor.constraint(equalTo: vc7.view.centerYAnchor)
            let widthConstraint7 = button7.widthAnchor.constraint(equalToConstant: 250)
            let heightConstraint7 = button7.heightAnchor.constraint(equalToConstant: 250)
        let curlConstraintRight7 = pageCurlView7.rightAnchor.constraint(equalTo: vc7.view.rightAnchor)
        let curlConstraintBottom7 = pageCurlView7.bottomAnchor.constraint(equalTo: vc7.view.bottomAnchor)
        let curlConstraintWidth7 = pageCurlView7.widthAnchor.constraint(equalToConstant: 125)
        let curlConstraintHeight7 = pageCurlView7.heightAnchor.constraint(equalToConstant: 125)
        vc7.view.addConstraints([titleTop7, titlehorizontal7, horizontalConstraint7, verticalConstraint7, widthConstraint7, heightConstraint7, tapLabelhorizontal7, bottom7, curlConstraintRight7, curlConstraintBottom7, curlConstraintWidth7, curlConstraintHeight7])
            
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
            let pageCurlView8:UIImageView = UIImageView()
            let pageCurl8 = UIImage(named: "pageCurl.jpg")
        
            vc8.view.addSubview(button8)
            vc8.view.addSubview(homeButton)
            vc8.view.addSubview(pageCurlView8)
        
            pageCurlView8.image = pageCurl8
            pageCurlView8.translatesAutoresizingMaskIntoConstraints = false
        
            let image8 = UIImage(named: "xPattern")
            button8.setImage(image8, for: .normal)
            UIView.transition(with: button8, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            button8.addTarget(self, action: #selector(flipper8), for: .touchUpInside)
            button8.translatesAutoresizingMaskIntoConstraints = false
        
            let tapLabel8 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            tapLabel8.textColor = .white
            tapLabel8.text = "Tap Image To View An Alternate"
            tapLabel8.translatesAutoresizingMaskIntoConstraints = false
        
            vc8.view.addSubview(tapLabel8)
        
            let title8 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            title8.textColor = .white
            title8.text = "X Pattern = 67"
            title8.translatesAutoresizingMaskIntoConstraints = false

            vc8.view.addSubview(title8)
    
            let titlehorizontal8 = title8.centerXAnchor.constraint(equalTo: vc8.view.centerXAnchor)
            let titleTop8 = title8.topAnchor.constraint(equalTo: vc8.view.topAnchor, constant: 50)
        
        let bottom8 = tapLabel8.topAnchor.constraint(equalTo: button8.bottomAnchor, constant: 15)
            let tapLabelhorizontal8 = tapLabel8.centerXAnchor.constraint(equalTo: vc8.view.centerXAnchor)
        
            let horizontalConstraint8 = button8.centerXAnchor.constraint(equalTo: vc8.view.centerXAnchor)
            let verticalConstraint8 = button8.centerYAnchor.constraint(equalTo: vc8.view.centerYAnchor)
            let widthConstraint8 = button8.widthAnchor.constraint(equalToConstant: 250)
            let heightConstraint8 = button8.heightAnchor.constraint(equalToConstant: 250)
        let curlConstraintRight8 = pageCurlView8.rightAnchor.constraint(equalTo: vc8.view.rightAnchor)
        let curlConstraintBottom8 = pageCurlView8.bottomAnchor.constraint(equalTo: vc8.view.bottomAnchor)
        let curlConstraintWidth8 = pageCurlView8.widthAnchor.constraint(equalToConstant: 125)
        let curlConstraintHeight8 = pageCurlView8.heightAnchor.constraint(equalToConstant: 125)
        vc8.view.addConstraints([titlehorizontal8, titleTop8, horizontalConstraint8, verticalConstraint8, widthConstraint8, heightConstraint8, tapLabelhorizontal8, bottom8, curlConstraintRight8, curlConstraintBottom8, curlConstraintWidth8, curlConstraintHeight8])
            
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
            let pageCurlView9:UIImageView = UIImageView()
            let pageCurl9 = UIImage(named: "pageCurl.jpg")
        
            vc9.view.addSubview(button9)
            vc9.view.addSubview(homeButton)
            vc9.view.addSubview(pageCurlView9)
        
            pageCurlView9.image = pageCurl9
            pageCurlView9.translatesAutoresizingMaskIntoConstraints = false
        
            let image9 = UIImage(named: "dinnerForTwo")
            button9.setImage(image9, for: .normal)
            UIView.transition(with: button9, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            button9.addTarget(self, action: #selector(flipper9), for: .touchUpInside)
            button9.translatesAutoresizingMaskIntoConstraints = false
        
            let tapLabel9 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            tapLabel9.textColor = .white
            tapLabel9.text = "Tap Image To View An Alternate"
            tapLabel9.translatesAutoresizingMaskIntoConstraints = false
        
            vc9.view.addSubview(tapLabel9)
        
            let title9 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            title9.textColor = .white
            title9.text = "Dinner For Two = 69"
            title9.translatesAutoresizingMaskIntoConstraints = false

            vc9.view.addSubview(title9)
    
            let titlehorizontal9 = title9.centerXAnchor.constraint(equalTo: vc9.view.centerXAnchor)
            let titleTop9 = title9.topAnchor.constraint(equalTo: vc9.view.topAnchor, constant: 50)
        
        let bottom9 = tapLabel9.topAnchor.constraint(equalTo: button9.bottomAnchor, constant: 15)
            let tapLabelhorizontal9 = tapLabel9.centerXAnchor.constraint(equalTo: vc9.view.centerXAnchor)
        
            let horizontalConstraint9 = button9.centerXAnchor.constraint(equalTo: vc9.view.centerXAnchor)
            let verticalConstraint9 = button9.centerYAnchor.constraint(equalTo: vc9.view.centerYAnchor)
            let widthConstraint9 = button9.widthAnchor.constraint(equalToConstant: 250)
            let heightConstraint9 = button9.heightAnchor.constraint(equalToConstant: 250)
        let curlConstraintRight9 = pageCurlView9.rightAnchor.constraint(equalTo: vc9.view.rightAnchor)
        let curlConstraintBottom9 = pageCurlView9.bottomAnchor.constraint(equalTo: vc9.view.bottomAnchor)
        let curlConstraintWidth9 = pageCurlView9.widthAnchor.constraint(equalToConstant: 125)
        let curlConstraintHeight9 = pageCurlView9.heightAnchor.constraint(equalToConstant: 125)
        vc9.view.addConstraints([titlehorizontal9, titleTop9, horizontalConstraint9, verticalConstraint9, widthConstraint9, heightConstraint9, tapLabelhorizontal9, bottom9, curlConstraintRight9, curlConstraintBottom9, curlConstraintWidth9, curlConstraintHeight9])
            
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
        
        let vc10 = UIViewController()
            vc10.view.backgroundColor = greenColor
            myControllers.append(vc10)
            let view10 = UIView()
            let pageCurlView10:UIImageView = UIImageView()
            let pageCurl10 = UIImage(named: "pageCurl.jpg")
        
            vc10.view.addSubview(button10)
            vc10.view.addSubview(homeButton)
            vc10.view.addSubview(pageCurlView10)
        
            pageCurlView10.image = pageCurl10
            pageCurlView10.translatesAutoresizingMaskIntoConstraints = false
        
            let image10 = UIImage(named: "tPattern")
            button10.setImage(image10, for: .normal)
            UIView.transition(with: button10, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            button10.addTarget(self, action: #selector(flipper10), for: .touchUpInside)
            button10.translatesAutoresizingMaskIntoConstraints = false
        
            let tapLabel10 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            tapLabel10.textColor = .white
            tapLabel10.text = "Tap Image To View An Alternate"
            tapLabel10.translatesAutoresizingMaskIntoConstraints = false
        
            vc10.view.addSubview(tapLabel10)
        
            let title10 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            title10.textColor = .white
            title10.text = "T Pattern = 86"
            title10.translatesAutoresizingMaskIntoConstraints = false

            vc10.view.addSubview(title10)
    
            let titlehorizontal10 = title10.centerXAnchor.constraint(equalTo: vc10.view.centerXAnchor)
            let titleTop10 = title10.topAnchor.constraint(equalTo: vc10.view.topAnchor, constant: 50)
        
        let bottom10 = tapLabel10.topAnchor.constraint(equalTo: button10.bottomAnchor, constant: 15)
            let tapLabelhorizontal10 = tapLabel10.centerXAnchor.constraint(equalTo: vc10.view.centerXAnchor)
        
            let horizontalConstraint10 = button10.centerXAnchor.constraint(equalTo: vc10.view.centerXAnchor)
            let verticalConstraint10 = button10.centerYAnchor.constraint(equalTo: vc10.view.centerYAnchor)
            let widthConstraint10 = button10.widthAnchor.constraint(equalToConstant: 250)
            let heightConstraint10 = button10.heightAnchor.constraint(equalToConstant: 250)
        let curlConstraintRight10 = pageCurlView10.rightAnchor.constraint(equalTo: vc10.view.rightAnchor)
        let curlConstraintBottom10 = pageCurlView10.bottomAnchor.constraint(equalTo: vc10.view.bottomAnchor)
        let curlConstraintWidth10 = pageCurlView10.widthAnchor.constraint(equalToConstant: 125)
        let curlConstraintHeight10 = pageCurlView10.heightAnchor.constraint(equalToConstant: 125)
        vc10.view.addConstraints([titleTop10, titlehorizontal10, horizontalConstraint10, verticalConstraint10, widthConstraint10, heightConstraint10, tapLabelhorizontal10, bottom10, curlConstraintRight10, curlConstraintBottom10, curlConstraintWidth10, curlConstraintHeight10])
            
        let height10: CGFloat = 50
        var statusBarHeight10: CGFloat = 0
        if #available(iOS 13.0, *) {
            statusBarHeight10 = vc10.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
            } else {
            statusBarHeight10 = UIApplication.shared.statusBarFrame.height
        }
        let navbar10 = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight10, width: UIScreen.main.bounds.width, height: height10))
        navbar10.barTintColor = greenColor
        navbar10.isTranslucent = false
        navbar10.delegate = self
        
        if let rightBarButtonItem10 = navigationItem.rightBarButtonItem {
            rightBarButtonItem10.target = self
            rightBarButtonItem10.action = #selector(homeTapped)
            navigationItem.hidesBackButton = true
        }
        
        navbar10.items = [navigationItem]
        vc10.view.addSubview(navbar10)
        vc10.view?.frame = CGRect(x: 0, y: height10, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - height10))

        self.view = view10
        
        let vc11 = UIViewController()
            vc11.view.backgroundColor = greenColor
            myControllers.append(vc11)
            let view11 = UIView()
            let pageCurlView11:UIImageView = UIImageView()
            let pageCurl11 = UIImage(named: "pageCurl.jpg")
        
            vc11.view.addSubview(button11)
            vc11.view.addSubview(homeButton)
            vc11.view.addSubview(pageCurlView11)
        
            pageCurlView11.image = pageCurl11
            pageCurlView11.translatesAutoresizingMaskIntoConstraints = false
        
            let image11 = UIImage(named: "pictureFrame")
            button11.setImage(image11, for: .normal)
            UIView.transition(with: button11, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            button11.addTarget(self, action: #selector(flipper11), for: .touchUpInside)
            button11.translatesAutoresizingMaskIntoConstraints = false
        
            let tapLabel11 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            tapLabel11.textColor = .white
            tapLabel11.text = "Tap Image To View An Alternate"
            tapLabel11.translatesAutoresizingMaskIntoConstraints = false
        
            vc11.view.addSubview(tapLabel11)
        
            let title11 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            title11.textColor = .white
            title11.text = "Picture Frame = 100"
            title11.translatesAutoresizingMaskIntoConstraints = false

            vc11.view.addSubview(title11)
    
            let titlehorizontal11 = title11.centerXAnchor.constraint(equalTo: vc11.view.centerXAnchor)
            let titleTop11 = title11.topAnchor.constraint(equalTo: vc11.view.topAnchor, constant: 50)
        
        let bottom11 = tapLabel11.topAnchor.constraint(equalTo: button11.bottomAnchor, constant: 15)
            let tapLabelhorizontal11 = tapLabel11.centerXAnchor.constraint(equalTo: vc11.view.centerXAnchor)
        
            let horizontalConstraint11 = button11.centerXAnchor.constraint(equalTo: vc11.view.centerXAnchor)
            let verticalConstraint11 = button11.centerYAnchor.constraint(equalTo: vc11.view.centerYAnchor)
            let widthConstraint11 = button11.widthAnchor.constraint(equalToConstant: 250)
            let heightConstraint11 = button11.heightAnchor.constraint(equalToConstant: 250)
        let curlConstraintRight11 = pageCurlView11.rightAnchor.constraint(equalTo: vc11.view.rightAnchor)
        let curlConstraintBottom11 = pageCurlView11.bottomAnchor.constraint(equalTo: vc11.view.bottomAnchor)
        let curlConstraintWidth11 = pageCurlView11.widthAnchor.constraint(equalToConstant: 125)
        let curlConstraintHeight11 = pageCurlView11.heightAnchor.constraint(equalToConstant: 125)
        vc11.view.addConstraints([titleTop11, titlehorizontal11, horizontalConstraint11, verticalConstraint11, widthConstraint11, heightConstraint11, tapLabelhorizontal11, bottom11, curlConstraintRight11, curlConstraintBottom11, curlConstraintWidth11, curlConstraintHeight11])
            
        let height11: CGFloat = 50
        var statusBarHeight11: CGFloat = 0
        if #available(iOS 13.0, *) {
            statusBarHeight11 = vc11.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
            } else {
            statusBarHeight11 = UIApplication.shared.statusBarFrame.height
        }
        let navbar11 = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight11, width: UIScreen.main.bounds.width, height: height11))
        navbar11.barTintColor = greenColor
        navbar11.isTranslucent = false
        navbar11.delegate = self
        
        if let rightBarButtonItem11 = navigationItem.rightBarButtonItem {
            rightBarButtonItem11.target = self
            rightBarButtonItem11.action = #selector(homeTapped)
            navigationItem.hidesBackButton = true
        }
        
        navbar11.items = [navigationItem]
        vc11.view.addSubview(navbar11)
        vc11.view?.frame = CGRect(x: 0, y: height11, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - height11))

        self.view = view11
        
        let vc12 = UIViewController()
            vc12.view.backgroundColor = greenColor
            myControllers.append(vc12)
            let view12 = UIView()
            let pageCurlView12:UIImageView = UIImageView()
            let pageCurl12 = UIImage(named: "pageCurl.jpg")
        
            vc12.view.addSubview(button12)
            vc12.view.addSubview(homeButton)
            vc12.view.addSubview(pageCurlView12)
        
            pageCurlView12.image = pageCurl12
            pageCurlView12.translatesAutoresizingMaskIntoConstraints = false
        
            let image12 = UIImage(named: "bowl")
            button12.setImage(image12, for: .normal)
            UIView.transition(with: button12, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            button12.addTarget(self, action: #selector(flipper12), for: .touchUpInside)
            button12.translatesAutoresizingMaskIntoConstraints = false
        
            let tapLabel12 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            tapLabel12.textColor = .white
            tapLabel12.text = "Tap Image To View An Alternate"
            tapLabel12.translatesAutoresizingMaskIntoConstraints = false
        
            vc12.view.addSubview(tapLabel12)
        
            let title12 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            title12.textColor = .white
            title12.text = "Bowl = 67"
            title12.translatesAutoresizingMaskIntoConstraints = false

            vc12.view.addSubview(title12)
    
            let titlehorizontal12 = title12.centerXAnchor.constraint(equalTo: vc12.view.centerXAnchor)
            let titleTop12 = title12.topAnchor.constraint(equalTo: vc12.view.topAnchor, constant: 50)
        
        let bottom12 = tapLabel12.topAnchor.constraint(equalTo: button12.bottomAnchor, constant: 15)
            let tapLabelhorizontal12 = tapLabel12.centerXAnchor.constraint(equalTo: vc12.view.centerXAnchor)
        
            let horizontalConstraint12 = button12.centerXAnchor.constraint(equalTo: vc12.view.centerXAnchor)
            let verticalConstraint12 = button12.centerYAnchor.constraint(equalTo: vc12.view.centerYAnchor)
            let widthConstraint12 = button12.widthAnchor.constraint(equalToConstant: 250)
            let heightConstraint12 = button12.heightAnchor.constraint(equalToConstant: 250)
        let curlConstraintRight12 = pageCurlView12.rightAnchor.constraint(equalTo: vc12.view.rightAnchor)
        let curlConstraintBottom12 = pageCurlView12.bottomAnchor.constraint(equalTo: vc12.view.bottomAnchor)
        let curlConstraintWidth12 = pageCurlView12.widthAnchor.constraint(equalToConstant: 125)
        let curlConstraintHeight12 = pageCurlView12.heightAnchor.constraint(equalToConstant: 125)
        vc12.view.addConstraints([titlehorizontal12, titleTop12, horizontalConstraint12, verticalConstraint12, widthConstraint12, heightConstraint12, tapLabelhorizontal12, bottom12, curlConstraintRight12, curlConstraintBottom12, curlConstraintWidth12, curlConstraintHeight12])
            
        let height12: CGFloat = 50
        var statusBarHeight12: CGFloat = 0
        if #available(iOS 13.0, *) {
            statusBarHeight12 = vc12.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
            } else {
            statusBarHeight12 = UIApplication.shared.statusBarFrame.height
        }
        let navbar12 = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight12, width: UIScreen.main.bounds.width, height: height12))
        navbar12.barTintColor = greenColor
        navbar12.isTranslucent = false
        navbar12.delegate = self
        
        if let rightBarButtonItem12 = navigationItem.rightBarButtonItem {
            rightBarButtonItem12.target = self
            rightBarButtonItem12.action = #selector(homeTapped)
            navigationItem.hidesBackButton = true
        }
        
        navbar12.items = [navigationItem]
        vc12.view.addSubview(navbar12)
        vc12.view?.frame = CGRect(x: 0, y: height12, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - height12))

        self.view = view12
        
        let vc13 = UIViewController()
            vc13.view.backgroundColor = greenColor
            myControllers.append(vc13)
            let view13 = UIView()
        
            vc13.view.addSubview(button13)
            vc13.view.addSubview(homeButton)
        
            let image13 = UIImage(named: "fullHouse")
            button13.setImage(image13, for: .normal)
            UIView.transition(with: button13, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            button13.addTarget(self, action: #selector(flipper13), for: .touchUpInside)
            button13.translatesAutoresizingMaskIntoConstraints = false
        
            let tapLabel13 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            tapLabel13.textColor = .white
            tapLabel13.text = "Tap Image To View An Alternate"
            tapLabel13.translatesAutoresizingMaskIntoConstraints = false
        
            vc13.view.addSubview(tapLabel13)
        
            let title13 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            title13.textColor = .white
            title13.text = "Full House = 135"
            title13.translatesAutoresizingMaskIntoConstraints = false

            vc13.view.addSubview(title13)
    
            let titlehorizontal13 = title13.centerXAnchor.constraint(equalTo: vc13.view.centerXAnchor)
            let titleTop13 = title13.topAnchor.constraint(equalTo: vc13.view.topAnchor, constant: 50)
        
        let bottom13 = tapLabel13.topAnchor.constraint(equalTo: button13.bottomAnchor, constant: 15)
            let tapLabelhorizontal13 = tapLabel13.centerXAnchor.constraint(equalTo: vc13.view.centerXAnchor)
        
            let horizontalConstraint13 = button13.centerXAnchor.constraint(equalTo: vc13.view.centerXAnchor)
            let verticalConstraint13 = button13.centerYAnchor.constraint(equalTo: vc13.view.centerYAnchor)
            let widthConstraint13 = button13.widthAnchor.constraint(equalToConstant: 250)
            let heightConstraint13 = button13.heightAnchor.constraint(equalToConstant: 250)
            vc13.view.addConstraints([titlehorizontal13, titleTop13, horizontalConstraint13, verticalConstraint13, widthConstraint13, heightConstraint13, tapLabelhorizontal13, bottom13])
            
        let height13: CGFloat = 50
        var statusBarHeight13: CGFloat = 0
        if #available(iOS 13.0, *) {
            statusBarHeight13 = vc13.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
            } else {
            statusBarHeight13 = UIApplication.shared.statusBarFrame.height
        }
        let navbar13 = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight13, width: UIScreen.main.bounds.width, height: height13))
        navbar13.barTintColor = greenColor
        navbar13.isTranslucent = false
        navbar13.delegate = self
        
        if let rightBarButtonItem13 = navigationItem.rightBarButtonItem {
            rightBarButtonItem13.target = self
            rightBarButtonItem13.action = #selector(homeTapped)
            navigationItem.hidesBackButton = true
        }
        
        navbar13.items = [navigationItem]
        vc13.view.addSubview(navbar13)
        vc13.view?.frame = CGRect(x: 0, y: height13, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - height13))

        self.view = view13
       
    }
    
    @objc func flipper() {
        
        
        if isBackImageOpen {
            isBackImageOpen = false
            let image = UIImage(named: "jesusAge")
            button.setImage(image, for: .normal)
            UIView.transition(with: button, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)

        } else {
            isBackImageOpen = true
            let image = UIImage(named: "jesusAgeOther")
            button.setImage(image, for: .normal)
            UIView.transition(with: button, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
        
    
    @objc func flipper2() {
        
        if isBackImageOpen2 {
            isBackImageOpen2 = false
            let image2 = UIImage(named: "deckOfCards")
            button2.setImage(image2, for: .normal)
            UIView.transition(with: button2, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)

        } else {
            isBackImageOpen2 = true
            let image2 = UIImage(named: "deckOfCardsOther")
            button2.setImage(image2, for: .normal)
            UIView.transition(with: button2, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
    
    @objc func flipper3() {
        
        if isBackImageOpen3 {
            isBackImageOpen3 = false
            let image3 = UIImage(named: "mickeyMouseEars")
            button3.setImage(image3, for: .normal)
            UIView.transition(with: button3, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)

        } else {
            isBackImageOpen3 = true
            let image3 = UIImage(named: "mickeyMouseEarsOther")
            button3.setImage(image3, for: .normal)
            UIView.transition(with: button3, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
    
    @objc func flipper4() {
        
        if isBackImageOpen4 {
            isBackImageOpen4 = false
            let image4 = UIImage(named: "railroad")
            button4.setImage(image4, for: .normal)
            UIView.transition(with: button4, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)

        } else {
            isBackImageOpen4 = true
            let image4 = UIImage(named: "railroadOther")
            button4.setImage(image4, for: .normal)
            UIView.transition(with: button4, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
    
    @objc func flipper5() {
        
        if isBackImageOpen5 {
            isBackImageOpen5 = false
            let image5 = UIImage(named: "box")
            button5.setImage(image5, for: .normal)
            UIView.transition(with: button5, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)

        } else {
            isBackImageOpen5 = true
            let image5 = UIImage(named: "boxOther")
            button5.setImage(image5, for: .normal)
            UIView.transition(with: button5, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
    
    @objc func flipper6() {
        
        if isBackImageOpen6 {
            isBackImageOpen6 = false
            let image6 = UIImage(named: "cornerPocket")
            button6.setImage(image6, for: .normal)
            UIView.transition(with: button6, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)

        } else {
            isBackImageOpen6 = true
            let image6 = UIImage(named: "cornerPocketOther")
            button6.setImage(image6, for: .normal)
            UIView.transition(with: button6, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
    
    @objc func flipper7() {
        
        
        if isBackImageOpen7{
            isBackImageOpen7 = false
            let image7 = UIImage(named: "plusPattern")
            button7.setImage(image7, for: .normal)
            UIView.transition(with: button7, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)

        } else {
            isBackImageOpen7 = true
            let image7 = UIImage(named: "plusPatternOther")
            button7.setImage(image7, for: .normal)
            UIView.transition(with: button7, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
    
    @objc func flipper8() {
        
        
        if isBackImageOpen8 {
            isBackImageOpen8 = false
            let image8 = UIImage(named: "xPattern")
            button8.setImage(image8, for: .normal)
            UIView.transition(with: button8, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)

        } else {
            isBackImageOpen8 = true
            let image8 = UIImage(named: "xPatternOther")
            button8.setImage(image8, for: .normal)
            UIView.transition(with: button8, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
    
    @objc func flipper9() {
        
        
        if isBackImageOpen9 {
            isBackImageOpen9 = false
            let image9 = UIImage(named: "dinnerForTwo")
            button9.setImage(image9, for: .normal)
            UIView.transition(with: button9, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)

        } else {
            isBackImageOpen9 = true
            let image9 = UIImage(named: "dinnerForTwoOther")
            button9.setImage(image9, for: .normal)
            UIView.transition(with: button9, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
    
    @objc func flipper10() {
        
        
        if isBackImageOpen10 {
            isBackImageOpen10 = false
            let image10 = UIImage(named: "tPattern")
            button10.setImage(image10, for: .normal)
            UIView.transition(with: button10, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)

        } else {
            isBackImageOpen10 = true
            let image10 = UIImage(named: "tPatternOther")
            button10.setImage(image10, for: .normal)
            UIView.transition(with: button10, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
    
    @objc func flipper11() {
        
        
        if isBackImageOpen11 {
            isBackImageOpen11 = false
            let image11 = UIImage(named: "pictureFrame")
            button11.setImage(image11, for: .normal)
            UIView.transition(with: button11, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)

        } else {
            isBackImageOpen11 = true
            let image11 = UIImage(named: "pictureFrameOther")
            button11.setImage(image11, for: .normal)
            UIView.transition(with: button11, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
    
    @objc func flipper12() {
        
        
        if isBackImageOpen12 {
            isBackImageOpen12 = false
            let image12 = UIImage(named: "bowl")
            button12.setImage(image12, for: .normal)
            UIView.transition(with: button12, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)

        } else {
            isBackImageOpen12 = true
            let image12 = UIImage(named: "bowlOther")
            button12.setImage(image12, for: .normal)
            UIView.transition(with: button12, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
    
    @objc func flipper13() {
        
        
        if isBackImageOpen13 {
            isBackImageOpen13 = false
            let image13 = UIImage(named: "fullHouse")
            button13.setImage(image13, for: .normal)
            UIView.transition(with: button13, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)

        } else {
            isBackImageOpen13 = true
            let image13 = UIImage(named: "fullHouseOther")
            button13.setImage(image13, for: .normal)
            UIView.transition(with: button13, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }

    @objc func homeTapped() {
    print ("please Father")
    performSegue(withIdentifier: "HomePage", sender: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func presentPageVC () {
        guard let first = myControllers.first else {
            return
        }
        let vc = UIPageViewController(transitionStyle: .pageCurl, navigationOrientation: .horizontal, options: nil)
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
