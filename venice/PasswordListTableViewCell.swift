//
//  PasswordListTableViewCell.swift
//  venice
//
//  Created by konojunya on 2017/11/01.
//  Copyright © 2017年 konojunya. All rights reserved.
//

import UIKit

class PasswordlistTableViewCell: UITableViewCell{
    
    @IBOutlet weak var serviceName: UILabel!
    @IBOutlet weak var id: UILabel!
    
    func set(serviceName: String, id: String ) {
        self.serviceName.text = serviceName
        self.id.text = id
    }
    
}
