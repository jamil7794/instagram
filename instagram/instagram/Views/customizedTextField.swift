//
//  customizedTextField.swift
//  instagram
//
//  Created by Jamil Jalal on 9/29/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class customizedTextField: UITextField {

    override func prepareForInterfaceBuilder() {
        cusomizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        cusomizeView()
    }
    
    func cusomizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2474047517)
        layer.cornerRadius = 5.0
        textAlignment = .left
        
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p,attributes:[.foregroundColor: #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)] )
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
            
            // Customizing the place Holder
        }
        layer.borderWidth = 2.0
        layer.borderColor = #colorLiteral(red: 0, green: 0.009395277504, blue: 1, alpha: 1)
    }

}
