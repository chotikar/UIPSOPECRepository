//
//  ContactUsViewController.swift
//  UIPSOPEC
//
//  Created by Popp on 2/28/17.
//  Copyright © 2017 Senior Project. All rights reserved.

import UIKit
class ContactUsViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
        
    
        
    }
    
    
    private func setupNavigation() {
        
        let Menuimageicon = UIButton(type: .system)
        Menuimageicon.setImage(#imageLiteral(resourceName: "menu").withRenderingMode(.alwaysOriginal), for: .normal)
        Menuimageicon.frame = CGRect(x:0,y:0,width:30,height:30)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: Menuimageicon)
        
        let Chatimageicon = UIButton(type: .system)
        Chatimageicon.setImage(#imageLiteral(resourceName: "chat").withRenderingMode(.alwaysOriginal), for: .normal)
        Chatimageicon.frame = CGRect(x:0,y:0,width:30,height:30)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: Chatimageicon)
        
        
        navigationController?.navigationBar.barTintColor = UIColor.red

    }
    

}
