//
//  customizedButton.swift
//  instagram
//
//  Created by Jamil Jalal on 9/29/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class customizedButton: UIButton {

    override func prepareForInterfaceBuilder() {
        customize()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customize()
    }
    
    func customize(){
 
        layer.cornerRadius = 5.0
        layer.borderWidth = 2.0
        layer.borderColor = #colorLiteral(red: 0, green: 0.009395277504, blue: 1, alpha: 1)
    }
}

