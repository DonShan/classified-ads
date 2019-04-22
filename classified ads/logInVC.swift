//
//  logInVC.swift
//  classified ads
//
//  Created by Madushan Senavirathna on 4/21/19.
//  Copyright © 2019 Madushan Senavirathna. All rights reserved.
//

import UIKit
import Alamofire

class logInVC: UIViewController {
    
     let objAJProgressView = AJProgressView()
    
    @IBOutlet weak var logInEmail: UITextField!
    @IBOutlet weak var logInPassword: UITextField!

        let rveenLogInURL = "http://192.168.1.105:51754/api/login"
    
    let username = "logInEmail"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    //Dismiss BTN
    @IBAction func hide(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    //LogInBTN
    @IBAction func logInBTN(_ sender: Any) {
        
        let parameters = ["username": logInEmail.text!,
                         "password": logInPassword.text!]
        
        self.objAJProgressView.show()
        
        Alamofire.request(rveenLogInURL, method: .get, parameters: parameters).responseJSON
            {
                
                response in
                
                self.objAJProgressView.hide()
                
//                if error == nil {
//                    
//                self.performSegue(withIdentifier: "Discover", sender: self)
//                print("Log in success ==========================> ")
//                
//                }
                
                
                
                
                print("Request: \(String(describing: response.request))")   // original url request
                print("Response: \(String(describing: response.response))") // http url response
                print("Result: \(response.result)")
                
                print(self.logInEmail)
                print(self.logInPassword)
                //printing response
                print(response)
                
                //getting the json value from the server
                if let result = response.result.value {
                    
                    //converting it as NSDictionary
                    let jsonData = result as! NSDictionary
                    
                    
                    
                    
                }
        }
        
    }
    
        
        }
        
        
        

    
   

