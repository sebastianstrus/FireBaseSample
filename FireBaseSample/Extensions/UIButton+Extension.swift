//
//  UIButton+Extension.swift
//  SnapKitSample
//
//  Created by Sebastian Strus on 2018-06-02.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

extension UIButton {
    
    public convenience init(title: String, borderColor: UIColor) {
        self.init()
        let attributedString = NSMutableAttributedString(attributedString: NSAttributedString(string: title, attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor.white]))
        self.setAttributedTitle(attributedString, for: .normal)
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = borderColor.cgColor
        self.setAnchor(width: 0, height: 50)
    }
    
}
