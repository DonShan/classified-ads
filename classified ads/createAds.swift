//
//  createAds.swift
//  classified ads
//
//  Created by Madushan Senavirathna on 4/21/19.
//  Copyright © 2019 Madushan Senavirathna. All rights reserved.
//

import UIKit
import IQDropDownTextField
import Alamofire


class createAds: UIViewController {
    
      let rveenAdPostURL = "http://localhost:20000/api/ad/advertisement"
      let imageUplodingLink = "http://localhost:20000/api/ad/advertisement"
    
    @IBOutlet weak var itemName: UITextField!
    @IBOutlet weak var itemCategory: UITextField!
    @IBOutlet weak var itemCount: UITextField!
    @IBOutlet weak var Location: UITextField!
    @IBOutlet weak var discription: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var itemPrice: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var conditionDrop: IQDropDownTextField!
    @IBOutlet weak var negoDrop: IQDropDownTextField!
    
   override func viewDidLoad() {
        super.viewDidLoad()

    conditionDrop.isOptionalDropDown = false
    conditionDrop.itemList = ["Brand New", "Used", "Refurbished"]
    
    negoDrop.isOptionalDropDown = false
    negoDrop.itemList = ["Negotiable", "Non Negotiable"]
    
    }
    //Dismiss BTN
    @IBAction func hide(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func imageUplodeBTN(_ sender: Any) {
        
      
        
    }
    
    @IBAction func postAdBTN(_ sender: Any) {
        
        let parameters = ["itemName": itemName.text!,
                          "itemCategory": itemCategory.text!,
                          "itemCount": itemCount.text!,
                          "Location": Location.text!,
                          "discription": discription.text!,
                          "phoneNumber": phoneNumber.text!,
                          "itemPrice": itemPrice.text!,
                          
                          ]
        
        Alamofire.request(rveenAdPostURL, method: .post, parameters: parameters).responseJSON
            {
                
                response in

                
                print("Request: \(String(describing: response.request))")   // original url request
                print("Response: \(String(describing: response.response))") // http url response
                print("Result: \(response.result)")
                
                print(self.itemName)
                print(self.itemCategory)
                print(self.itemCount)
                print(self.Location)
                print(self.discription)
                print(self.phoneNumber)
                print(self.itemPrice)
                print(self.conditionDrop)
                print(self.negoDrop)
               
                
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
