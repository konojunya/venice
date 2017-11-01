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
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.authTouchId()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func authTouchId() {
        let context = LAContext()
        var error :NSError?
        let localizedReason = "VENICEのロック解除"
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: localizedReason, reply: { success, error in
                
                if success {
                    self.performSegue(withIdentifier: "showMainView", sender: nil)
                } else {
                    let alert = UIAlertController(title: "認証エラー", message: "認証に失敗しました。", preferredStyle: .alert)
                    let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:{
                        (action: UIAlertAction!) -> Void in
                        print("OK")
                    })
                    
                    alert.addAction(defaultAction)
                    
                    self.present(alert, animated: true, completion: nil)
                }
                
            })
        } else {
            let alert = UIAlertController(title: "TouchIDに対応していません。", message: "TouchIDに対応したiPhoneを使ってください。", preferredStyle: .alert)
            let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:{
                (action: UIAlertAction!) -> Void in
                print("OK")
            })
            
            alert.addAction(defaultAction)
            
            present(alert, animated: true, completion: nil)
        }
    }


}

