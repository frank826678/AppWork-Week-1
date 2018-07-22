//
//  ViewController.swift
//  Assignment3-1
//
//  Created by Frank on 2018/7/19.
//  Copyright © 2018 Frank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TextInput1: UITextField!
    @IBOutlet weak var TextInput2: UITextField!
    @IBOutlet weak var TextInput3: UITextField!
    var key = 0
    @IBAction func Segment1(_ sender: UISegmentedControl) {  // 中間控制器
        if sender.selectedSegmentIndex == 0
        {
            key = 0
            TextInput3.backgroundColor = UIColor.black
            TextInput3.isUserInteractionEnabled = false
            TextInput1.text = "" //解決畫面殘留的輸入值
            TextInput2.text = "" //解決畫面殘留的輸入值
            TextInput3.text = "" //解決畫面殘留的輸入值
            
        }
        else {
            
            key = 1
            TextInput3.backgroundColor = UIColor.white
            TextInput3.isUserInteractionEnabled = true
            TextInput1.text = "" //解決畫面殘留的輸入值
            TextInput2.text = "" //解決畫面殘留的輸入值
            TextInput3.text = "" //解決畫面殘留的輸入值
            
        }

    } // segment 的括號
    @IBAction func ButtonOk1(_ sender: UIButton) {
        let Text1 = TextInput1.text
        let Text2 = TextInput2.text
        let Text3 = TextInput3.text
        if  key == 0 {
            let Result = (Text1,Text2)
            switch Result {
            case ("",""): alertPrint(in1: "Error", in2: "Please type something")
            case ("",_) : alertPrint(in1: "Error", in2: "Account should not be empty")
            case (_,"") : alertPrint(in1: "Error", in2: "Password should not be empty")
            case ("luke@gmai.com", "1234") : alertPrint(in1: "Login Success", in2: "Welcome Back , Luke ")
            default : alertPrint(in1: "Error", in2: "Login fail")
            }
        }
        else {
            let Result = (Text1,Text2,Text3)
            switch Result {
            case ("","",""): alertPrint(in1: "Error", in2: "Please type something")
            case ("",_,_) : alertPrint(in1: "Error", in2: "Account should not be empty")
            case (_,"",_) : alertPrint(in1: "Error", in2: "Password should not be empty")
            case (_,_,"") : alertPrint(in1: "Error", in2: "Check Password should not be empty")
            case ("luke@gmai.com",_,_) : alertPrint(in1: "Error", in2: "This account had already been registered.")
            case let (_,pw,pwc) where pw == pwc : alertPrint(in1: "Success", in2: "Signup Success")
            case let (_,pw,pwc) where pw != pwc : alertPrint(in1: "Error", in2: "Password and Check Password are different ")
            default : alertPrint(in1: "Error", in2: "Signup fail")
            }
        }
    }
    
    func nothing(){
    }
    func alertPrint (in1:String,in2:String) {
        let alert = UIAlertController(title:" \(in1)", message: "\(in2)", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (UIAlertAction) in
            self.nothing()
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TextInput3.backgroundColor = UIColor.black
        TextInput3.isUserInteractionEnabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}





//  以下不重要
//    override func viewWillAppear() {
//        super.viewWillAppear()
//
//
//    }
/*func alert1 () {
 let alert = UIAlertController(title: "Error", message: "Please type something", preferredStyle: .alert)
 let action = UIAlertAction(title: "OK", style: .default) { (UIAlertAction) in
 self.nothing()
 }
 alert.addAction(action)
 present(alert, animated: true, completion: nil)
 }
 func alert2 () {
 let alert = UIAlertController(title: "Error", message: "Account should not be empty", preferredStyle: .alert)
 let action = UIAlertAction(title: "OK", style: .default) { (UIAlertAction) in
 self.nothing()
 }
 alert.addAction(action)
 present(alert, animated: true, completion: nil)
 }
 func alert3 () {
 let alert = UIAlertController(title: "Error", message: "Password should not be empty", preferredStyle: .alert)
 let action = UIAlertAction(title: "OK", style: .default) { (UIAlertAction) in
 self.nothing()
 }
 alert.addAction(action)
 present(alert, animated: true, completion: nil)
 }
 
 func alert4 () {
 let alert = UIAlertController(title: "Success", message: "Welcome Back , Luke ", preferredStyle: .alert)
 let action = UIAlertAction(title: "OK", style: .default) { (UIAlertAction) in
 self.nothing()
 }
 alert.addAction(action)
 present(alert, animated: true, completion: nil)
 }
 func alert5 () {
 let alert = UIAlertController(title: "ERROR", message: "Please enter the correct account or password", preferredStyle: .alert)
 let action = UIAlertAction(title: "Got it", style: .default) { (UIAlertAction) in
 self.nothing()
 }
 alert.addAction(action)
 present(alert, animated: true, completion: nil)
 }
 */
//        let Text11 = TextInput1.text
//        let Text21 = TextInput2.text
//
//        let Text31 = TextInput3.text
//        if Text11 != nil , Text21 == Text31 {
//            alertPrint(in1: "Success", in2: "Registered Successfully.")
//        }
//        else {
//            alertPrint(in1: "Error", in2: "Please enter correct information")
//        }

