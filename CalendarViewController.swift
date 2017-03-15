//
//  CalendarViewController.swift
//  UIPSOPEC
//
//  Created by Popp on 3/15/17.
//  Copyright © 2017 Senior Project. All rights reserved.
//


import UIKit
import SWRevealViewController

class CalendarViewController: UIViewController {
    @IBOutlet weak var MenuButon: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Sidemenu()
        
    }
    
    
    func Sidemenu() {
        if revealViewController() != nil {
            
            MenuButon.target = SWRevealViewController()
            MenuButon.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    
}


