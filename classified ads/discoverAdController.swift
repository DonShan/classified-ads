//
//  discoverAdController.swift
//  classified ads
//
//  Created by Madushan Senavirathna on 4/22/19.
//  Copyright © 2019 Madushan Senavirathna. All rights reserved.
//

import UIKit

class discoverAdController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    let addViewLink = "http://localhost:20000/api/ad/viewAdverts/"
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func hide(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
   

}
