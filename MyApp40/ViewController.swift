//
//  ViewController.swift
//  MyApp40
//
//  Created by user22 on 2017/10/11.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let app = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let usersRef = app.ref.child("users")
        
//        let userA001Ref = usersRef.child("A001")
//        userA001Ref.setValue(["username":"Brad","passwd":"123456"])

        let uid = "A002"
        usersRef.child("\(uid)/username").setValue("Brad2")
        usersRef.child("\(uid)/passwd").setValue("111111")

        
        
    }

}

