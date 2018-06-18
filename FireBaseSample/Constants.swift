//
//  Constants.swift
//  ISMP
//
//  Created by Sebastian Strus on 2018-06-14.
//  Copyright © 2018 OpenSolution. All rights reserved.
//

import UIKit

let RESIZE = UIScreen.main.bounds.size.height / 667

struct Device {
    static let IS_IPAD             = UIDevice.current.userInterfaceIdiom == .pad
    static let IS_IPHONE           = UIDevice.current.userInterfaceIdiom == .phone
    static let IS_RETINA           = UIScreen.main.scale >= 2.0
    
    static let SCREEN_WIDTH        = Int(UIScreen.main.bounds.size.width)
    static let SCREEN_HEIGHT       = Int(UIScreen.main.bounds.size.height)
    static let SCREEN_MAX_LENGTH   = Int( max(SCREEN_WIDTH, SCREEN_HEIGHT) )
    static let SCREEN_MIN_LENGTH   = Int( min(SCREEN_WIDTH, SCREEN_HEIGHT) )
    
    static let IS_IPHONE_4_OR_LESS = IS_IPHONE && SCREEN_MAX_LENGTH  < 568
    static let IS_IPHONE_5         = IS_IPHONE && SCREEN_MAX_LENGTH == 568
    static let IS_IPHONE_6         = IS_IPHONE && SCREEN_MAX_LENGTH == 667
    static let IS_IPHONE_6P        = IS_IPHONE && SCREEN_MAX_LENGTH == 736
    static let IS_IPHONE_X         = IS_IPHONE && SCREEN_MAX_LENGTH == 812
}

// Constants for keys
struct AppKeys {
}

// Constants for URL
struct AppLayoutParams {
}

// Constants for URL
struct AppURLs {
    static let HOME_PAGE = "http://sebastianstrus.github.io"
}

// Constants for custom fonts
struct AppFonts {
    static let TITLE_FONT = UIFont.boldSystemFont(ofSize: 60.0)
    static let SUBTITLE_FONT = UIFont.boldSystemFont(ofSize: 25.0)
    static let BTN_FONT = UIFont(name: "SeymourOne", size: Device.IS_IPHONE ? 26 : 52)
}

// Constants for colors
struct AppColors {
    static let BAR_BUTTON_COLOR = UIColor(r: 120, g: 194, b: 209)
    static let KASKO_BAR_BUTTON_COLOR = UIColor(r: 204, g: 204, b: 204)
    static let PAYMENT_BUTTON_COLOR = UIColor(r: 74, g: 80, b: 84)
    static let VIEW_BGD_COLOR = UIColor(r: 244, g: 244, b: 244)
    static let GREEN_BORDER: UIColor = UIColor(r: 80, g: 227, b: 194)
    static let RED_BORDER: UIColor = UIColor(r: 255, g: 151, b: 164)
    static let DODGER_BLUE: UIColor = UIColor(r: 30, g: 144, b: 255)
    static var SILVER_GREY: UIColor = UIColor(r: 225, g: 225, b: 225)
}


