//
//  ViewController.swift
//  testData
//
//  Created by 黃健維 on 2015/12/29.
//  Copyright © 2015年 黃健維. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    
    
    
    
    
    @IBAction func loginVerifyButton(sender: AnyObject) {
                
    }
    
    
    func signup(){
        let username = usernameTextField.text
        let passwd = passwordTextField.text
        let emailEntered = emailTextField.text
        
        let user = PFUser()
        user.username = username
        user.password = passwd
        user.email = emailEntered
        
        user.signUpInBackgroundWithBlock { ( succeeded, error) -> Void in
            if error ==  nil{
                //print(username)
                
                self.messageLabel.text = "User Signed Up!"
            }
            else
            {
               // print(username)
                self.messageLabel.text = "Unsuccess, Please retry!"
            }
            
        }
        
        
        
    }
    

    
    
    func keyboardout(){
    usernameTextField.resignFirstResponder()
    passwordTextField.resignFirstResponder()
    emailTextField.resignFirstResponder()
    
    
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        keyboardout()
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

