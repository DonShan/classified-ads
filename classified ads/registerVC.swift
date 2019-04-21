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

    @IBOutlet var registerName: UITextField!
    @IBOutlet var registerEmail: UITextField!
    @IBOutlet var registerPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    //Dismiss BTN
    @IBAction func hide(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    //Register BTN
    @IBAction func registerBTN(_ sender: Any) {
    }
    

}
