//
//  NewsCell.swift
//  UIPSOPEC
//
//  Created by Chotikar on 2/22/2560 BE.
//  Copyright © 2560 Senior Project. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {
    let scWid = UIScreen.main.bounds.width
        let scHei = UIScreen.main.bounds.height
    
    @IBOutlet weak var newsImg: UIImageView!
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsSubtitle: UILabel!
    
       
        override func awakeFromNib() {
            newsImg.frame = CGRect(x: 0, y: 0, width:scWid, height: scHei*0.4)
            newsTitle.frame = CGRect(x: scWid*0.1, y: scHei*0.27, width: scWid*0.8, height: scHei*0.06)
            newsTitle.textColor = UIColor.white
            newsSubtitle.backgroundColor = UIColor.darkGray
            newsSubtitle.textColor = UIColor.white
            newsSubtitle.textAlignment = .center
        }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
