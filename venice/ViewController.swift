//
//  ViewController.swift
//  venice
//
//  Created by konojunya on 2017/10/31.
//  Copyright © 2017年 konojunya. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
    
    @IBAction func TouchIdButtomPressed(sender: AnyObject) {
        
        let context = LAContext()
        var error :NSError?
        let localizedReason = "認証したいから認証するよ"
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: localizedReason, reply: { success, error in
                
                if success {
                    print("認証成功")
                } else {
                    print("認証失敗: " + error!.localizedDescription)
                }
                
            })
        } else {
            print("TouchID非対応")
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

