//
//  borderLogIn.swift
//  classified ads
//
//  Created by Madushan Senavirathna on 4/21/19.
//  Copyright © 2019 Madushan Senavirathna. All rights reserved.
//

import UIKit

class border: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
