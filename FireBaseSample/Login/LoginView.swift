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
    var signupAction: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    
    func setup() {
        let stackView = createStackView(views: [emailTextField, passwordTextField, loginButton, signupButton])
        addSubview(backgroundImageView)
        addSubview(stackView)
        backgroundImageView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        stackView.setAnchor(width: self.frame.width - 60, height: 210)
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    var backgroundImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "background")
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField(placeHolder: "Email")
        return tf
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField(placeHolder: "Password")
        return tf
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(title: "Login", borderColor: .greenBorderColor)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    let signupButton: UIButton = {
        let button = UIButton(title: "Sign up", borderColor: .redBorderColor)
        button.addTarget(self, action: #selector(handleSignup), for: .touchUpInside)
        return button
    }()
    
    @objc func handleLogin() {
        print("login run")
        loginAction?()
    }
    
    @objc func handleSignup() {
        print("signup run")
        signupAction?()
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
