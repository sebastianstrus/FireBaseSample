//
//  LoginView.swift
//  SnapKitSample
//
//  Created by Sebastian Strus on 2018-06-01.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

class WelcomeView: UIView {
    
    
    var toLoginAction: (() -> Void)?
    var toSignupAction: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    
    func setup() {
        
        let titlesStackView = createStackView(views: [firstLabel, secondLabel])
        addSubview(titlesStackView)
        titlesStackView.setAnchor(top: nil,
                                  leading: nil,
                                  bottom: nil,
                                  trailing: nil,
                                  paddingTop: 0,
                                  paddingLeft: 0,
                                  paddingBottom: 0,
                                  paddingRight: 0,
                                  width: self.frame.width,
                                  height: Device.IS_IPHONE ? 160 : 320)
        titlesStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        let kPaddingTop: CGFloat = Device.IS_IPHONE ? 120 : 240
        titlesStackView.setAnchor(top: topAnchor,
                                  leading: nil,
                                  bottom: nil,
                                  trailing: nil,
                                  paddingTop: kPaddingTop,
                                  paddingLeft: 0,
                                  paddingBottom: 0,
                                  paddingRight: 0)
        
        let stackView = createStackView(views: [loginButton, signupButton])
        addSubview(stackView)
        //TODO remove one function
        stackView.setAnchor(top: nil,
                            leading: nil,
                            bottom: bottomAnchor,
                            trailing: nil,
                            paddingTop: 0,
                            paddingLeft: 0,
                            paddingBottom: 50,
                            paddingRight: 0,
                            width: self.frame.width - (Device.IS_IPHONE ? 60 : 300),
                            height: Device.IS_IPHONE ? 130 : 250)
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true        
    }
    
    let firstLabel: UILabel = {
        let label = UILabel()
        let attributedString = NSMutableAttributedString(attributedString: NSAttributedString(string: Strings.app_title, attributes: [NSAttributedString.Key.font: AppFonts.TITLE_FONT!, .foregroundColor: UIColor.white]))
        label.attributedText = attributedString
        label.textAlignment = NSTextAlignment.center
        label.shadowColor = .black
        label.shadowOffset = CGSize(width: 2.0, height: 2.0)
        return label
    }()
    
    let secondLabel: UILabel = {
        let label = UILabel()
        let attributedString = NSMutableAttributedString(attributedString: NSAttributedString(string: Strings.app_subtitle, attributes: [NSAttributedString.Key.font: AppFonts.SUBTITLE_FONT!, .foregroundColor: UIColor.white]))
        label.attributedText = attributedString
        label.textAlignment = NSTextAlignment.center
        label.shadowColor = .black
        label.shadowOffset = CGSize(width: 1.0, height: 1.0)
        return label
    }()
    

    
    let loginButton: UIButton = {
        let button = UIButton(title: "Login".localized, color: AppColors.DODGER_BLUE, filled: true)
        button.addTarget(self, action: #selector(handleGoToLogin), for: .touchUpInside)
        return button
    }()
    
    let signupButton: UIButton = {
        let button = UIButton(title: "Sign up".localized, color: .white, filled: false)
        button.addTarget(self, action: #selector(handleGoToSignup), for: .touchUpInside)
        return button
    }()
    
    
    
    @objc func handleGoToLogin() {
        print("Go to login page")
        toLoginAction?()
    }
    
    @objc func handleGoToSignup() {
        print("To to sign up page")
        toSignupAction?()
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
