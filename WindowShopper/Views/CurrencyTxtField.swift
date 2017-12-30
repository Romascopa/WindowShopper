//
//  CurrencyTxtField.swift
//  WindowShopper
//
//  Created by Lance Robbins on 12/28/17.
//  Copyright © 2017 Appcation. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTxtField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
        
    }
    
    override func draw(_ rect: CGRect) {
    // only use if actually drawing!
    let size: CGFloat = 20
        let currencyLbl: UILabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - (size / 2), width: size, height: size))
    currencyLbl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.8)
    currencyLbl.textAlignment = .center
    currencyLbl.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    currencyLbl.layer.cornerRadius = 5.0
    currencyLbl.clipsToBounds = true // if we don't do this rounded corners will break due to us using draw rect (a bug)
    
    // set number style to currency based on the locale (country) the user is in!
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.locale = .current
    
    // set symbol in drawn label
    currencyLbl.text = formatter.currencySymbol
    
    // add label to text field
    addSubview(currencyLbl)
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        //safety check
        if placeholder == nil {
            placeholder = " "
        }
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) ])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        clipsToBounds = true

    }
}
