//
//  FacultyViewController.swift
//  UIPSOPEC
//
//  Created by Popp on 3/15/17.
//  Copyright © 2017 Senior Project. All rights reserved.
//

import Foundation
import UIKit
import SWRevealViewController

class FacultyViewController : UIViewController {
    @IBOutlet weak var MenuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Sidemenu()
        

    }
    
    func Sidemenu() {
        if revealViewController() != nil {
            
            MenuButton.target = SWRevealViewController()
            MenuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
//    func CustomNavbar() {
//        navigationController?.navigationBar.tintColor = UIColor(colorLiteralRed: 255, green: 255, blue: 255, alpha: 1)
//        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 255, green: 51, blue: 51, alpha: 1)
//        
//        //navigationController?.navigationBar.titleTextAttributes = (NSForegroundColorAttributeName: UIColor.white)
//        
//    }

}
