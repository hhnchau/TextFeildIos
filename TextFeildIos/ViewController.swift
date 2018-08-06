//
//  ViewController.swift
//  TextFeildIos
//
//  Created by Kingpes on 8/5/18.
//  Copyright © 2018 Kingpes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var edtName: UITextField!
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("textFeild should begin Editing")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFeild did begin Editing")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("You type: \(string)")
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFeild did end Editing")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
       print("textFeild did end Editing")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFeild should return")
        return true
    }
    
    @IBAction func btnDissmis(_ sender: UIButton) {
        edtName.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setText textField
        //edtName.text = ""
        //edtName.placeholder = "😎" //special characters -> ctr+cmd+space
        //edtName.isSecureTextEntry = false
        //edtName.keyboardType = .emailAddress
        //edtName.layer.borderWidth = 1
        //edtName.layer.borderColor = UIColor.blue.cgColor
        //edtName.layer.cornerRadius = 5
        
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(adjustForKeyboard), name: .UIKeyboardWillHide, object: nil)
         notificationCenter.addObserver(self, selector: #selector(adjustForKeyboard), name: .UIKeyboardWillShow, object: nil)
    }
    
    @objc func adjustForKeyboard(notification: Notification){
        if(notification.name == .UIKeyboardWillHide){
            print("Keyboard will hide")
        }else if(notification.name == .UIKeyboardWillShow){
            print("Keyboard will show")
        }
    }
    
    

}

