//
//  MapViewController.swift
//  UIPSOPEC
//
//  Created by Popp on 3/15/17.
//  Copyright © 2017 Senior Project. All rights reserved.
//

import Foundation
import UIKit
import SWRevealViewController

class MapViewController: UIViewController {
    
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
