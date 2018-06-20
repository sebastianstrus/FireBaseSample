//
//  String+Extension.swift
//  FireBaseSample
//
//  Created by Sebastian Strus on 2018-06-17.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

// use:     myLabel.text = "Hi".localized()
//          myLabel.text = "Hi".localized(withComment: "with !!!")

extension String {
    
    // use:     myLabel.text = "Hi".localized()
    //          myLabel.text = "Hi".localized(withComment: "with !!!")
    func localized(withComment comment: String? = nil) -> String {
        return NSLocalizedString(self, comment: comment ?? "")
    }
    
    // use:     myLabel.text = "Hi".localized
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
