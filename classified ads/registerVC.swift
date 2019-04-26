//
//  registerVC.swift
//  classified ads
//
//  Created by Madushan Senavirathna on 4/21/19.
//  Copyright © 2019 Madushan Senavirathna. All rights reserved.
//

import UIKit
import Alamofire

class registerVC: UIViewController {

    let objAJProgressView = AJProgressView()
    
    @IBOutlet var registerName: UITextField!
    @IBOutlet var registerEmail: UITextField!
    @IBOutlet var registerPassword: UITextField!
    
    let rveenRegisterInURL = "http://192.168.1.105:51754/api/register"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    //Dismiss BTN
    @IBAction func hide(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    //Register BTN
    @IBAction func registerBTN(_ sender: Any) {
        
        let parameters = ["userName": registerName.text!,
                          "email": registerEmail.text!,
                          "pass": registerPassword.text!]
        
        self.objAJProgressView.show()
        
        Alamofire.request(rveenRegisterInURL, method: .post, parameters: parameters).responseJSON
            {
                
                response in
                
                self.objAJProgressView.hide()
               

                print("Request: \(String(describing: response.request))")   // original url request
                print("Response: \(String(describing: response.response))") // http url response
                print("Result: \(response.result)")
                
                print(self.registerName)
                print(self.registerPassword)
                print(self.registerEmail)
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
