//
//  ContactUsViewController.swift
//  UIPSOPEC
//
//  Created by Popp on 2/28/17.
//  Copyright © 2017 Senior Project. All rights reserved.

import UIKit
import SWRevealViewController

class ContactUsViewController : UIViewController {

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
}
