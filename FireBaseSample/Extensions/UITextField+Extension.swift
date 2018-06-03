//
//  UITextField+Extension.swift
//  SnapKitSample
//
//  Created by Sebastian Strus on 2018-06-02.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

extension UITextField {
    
    public convenience init(placeHolder: String) {
        self.init()
        self.borderStyle = .none
        self.layer.cornerRadius = 5
        self.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
        self.textColor = UIColor(white: 0.9, alpha: 0.8)
        self.font = UIFont.systemFont(ofSize: 17)
        self.autocorrectionType = .no
        // placeholder
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: placeHolder, attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor(white: 1, alpha: 0.7)]))
        self.attributedPlaceholder = placeholder
        // anchor
        self.setAnchor(width: 0, height: 40)
        self.setLeftPaddiingPoints(20)
    }
}
