//
//  LoginView.swift
//  SnapKitSample
//
//  Created by Sebastian Strus on 2018-06-01.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    var loginAction: (() -> Void)?
    var cancelAction: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    
    func setup() {
        let stackView = createStackView(views: [emailTextField, passwordTextField, loginButton, cancelButton])
        addSubview(backgroundImageView)
        addSubview(stackView)
        backgroundImageView.setAnchor(top: self.topAnchor,
                                      leading: self.leadingAnchor,
                                      bottom: self.bottomAnchor,
                                      trailing: self.trailingAnchor,
                                      paddingTop: 0,
                                      paddingLeft: 0,
                                      paddingBottom: 0,
                                      paddingRight: 0)
        stackView.setAnchor(top: nil,
                            leading: nil,
                            bottom: nil,
                            trailing: nil,
                            paddingTop: 0,
                            paddingLeft: 0,
                            paddingBottom: 0,
                            paddingRight: 0,
                            width: self.frame.width - (Device.IS_IPHONE ? 60 : 300),
                            height: Device.IS_IPHONE ? 210 : 420)
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    var backgroundImageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "restaurant"))
        iv.backgroundColor = .white
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    let emailTextField: HoshiTextField = {
        let tf = HoshiTextField(placeHolder: "Email".localized)
        tf.borderActiveColor = .orange
        tf.borderInactiveColor = .yellow
        return tf
    }()
    
    let passwordTextField: HoshiTextField = {
        let tf = HoshiTextField(placeHolder: "Password".localized)
        tf.borderActiveColor = .orange
        tf.borderInactiveColor = .yellow
        return tf
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(title: "Login".localized, borderColor: AppColors.GREEN_BORDER)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    let cancelButton: UIButton = {
        let button = UIButton(title: "Cancel".localized, borderColor: AppColors.RED_BORDER)
        button.addTarget(self, action: #selector(handleSignup), for: .touchUpInside)
        return button
    }()
    
    @objc func handleLogin() {
        print("Cancel")
        loginAction?()
    }
    
    @objc func handleSignup() {
        print("Cancel")
        cancelAction?()
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
