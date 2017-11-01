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
    
    let items = [["hoge","hoge"],["huga","huga"]];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
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
        
        cell.set(serviceName: self.items[indexPath.row][0], id: self.items[indexPath.row][1])
        
        return cell
        
    }
    
}
