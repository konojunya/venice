//
//  PasswordListViewController.swift
//  venice
//
//  Created by konojunya on 2017/11/01.
//  Copyright © 2017年 konojunya. All rights reserved.
//

import UIKit

class PasswordListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView?;
    
    let items = [
        [
            "serviceName": "LINE",
            "id": "konojunya"
        ],
        [
            "serviceName": "Twitter",
            "id": "konojunya"
        ],
        [
            "serviceName": "Facebook",
            "id": "junya.developer"
        ],
    ];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        
        self.tableView?.estimatedRowHeight = 80
        self.tableView?.rowHeight = UITableViewAutomaticDimension
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! PasswordlistTableViewCell
        
        cell.set(serviceName: self.items[indexPath.row]["serviceName"]!, id: self.items[indexPath.row]["id"]!)
        cell.layoutIfNeeded()
        
        return cell
        
    }
    
}
