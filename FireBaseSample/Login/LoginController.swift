//
//  LoginController.swift
//  SnapKitSample
//
//  Created by Sebastian Strus on 2018-05-31.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    
    var loginView: LoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        playVideo(title: "foody_background")
        
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    func setupView() {
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        self.loginView.loginAction = loginPressed
        self.loginView.signupAction = signupPressed
        
        self.view.addSubview(loginView)
        
        loginView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
    }
    
    func loginPressed() {
        print("login pressed")
        
    }
    
    func signupPressed() {
        let signUpController = SignUpController()
        present(signUpController, animated: true, completion: nil)
    }
    
    
    
    
    
}

