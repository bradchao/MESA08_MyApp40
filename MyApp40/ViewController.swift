//
//  ViewController.swift
//  MyApp40
//
//  Created by user22 on 2017/10/11.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    let app = UIApplication.shared.delegate as! AppDelegate
    
    @IBAction func changeValue(_ sender: Any) {
        let usersRef = app.ref.child("users")
        
        let userA001Ref = usersRef.child("A001")
        userA001Ref.setValue(["username":"newBrad","passwd":"888"])

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let usersRef = app.ref.child("users")
        
        let userA001Ref = usersRef.child("A001")
        userA001Ref.setValue(["username":"Brad","passwd":"123456"])

//        let uid = "A002"
//        usersRef.child("\(uid)/username").setValue("Brad2")
//        usersRef.child("\(uid)/passwd").setValue("111111")

        userA001Ref.observe( DataEventType.value) { (data) in
            let newdata = data.value as! [String:String]
            print("\(newdata["username"]!):\(newdata["passwd"]!)")
        }
        
        usersRef.observe(DataEventType.childAdded) {
            (data) in
            let newref = data.ref
            print(newref.key)
        }
        
        
    }

}

