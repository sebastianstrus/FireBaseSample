//
//  LoginController.swift
//  SnapKitSample
//
//  Created by Sebastian Strus on 2018-05-31.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {
    
    
    var welcomeView: WelcomeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    func setupView() {
        playVideo(title: "foody_background")
        let mainView = WelcomeView(frame: self.view.frame)
        self.welcomeView = mainView
        self.welcomeView.toLoginAction = toLoginPressed
        self.welcomeView.toSignupAction = toSignupPressed
        
        self.view.addSubview(welcomeView)
        
        welcomeView.setAnchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
    }
    
    func toLoginPressed() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
    
    func toSignupPressed() {
        let signUpController = SignUpController()
        present(signUpController, animated: true, completion: nil)
    }
}




/*

//
//  LoginView.swift
//  SnapKitSample
//
//  Created by Sebastian Strus on 2018-06-01.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

class AccountView: UIView {
    
    var profileImageView: UIImageView = {
        let iv = UIImageView()
        
        return iv
    }()
    
    let cameraButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Camera", for: .normal)
        button.addTarget(self, action: #selector(handleCamera), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setTitleColor(UIColor.purple, for: .normal)
        return button
    }()
    
    let libraryButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Library", for: .normal)
        button.addTarget(self, action: #selector(handleLibrary), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setTitleColor(UIColor.purple, for: .normal)
        return button
    }()
    
    let userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Username: ".localized
        return label
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Email: ".localized
        return label
    }()
    
    let numberOfMealsLabel: UILabel = {
        let label = UILabel()
        label.text = "Saved meals: ".localized
        return label
    }()
    
    let registrationDateLabel: UILabel = {
        let label = UILabel()
        label.text = "Registration date: "
        return label
    }()
    
    let logoutButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Log out", for: .normal)
        button.addTarget(self, action: #selector(handleLogOut), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setTitleColor(UIColor.purple, for: .normal)
        return button
    }()
    
    let removeAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Remove account", for: .normal)
        button.addTarget(self, action: #selector(handleRemoveAccount), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setTitleColor(UIColor.purple, for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setup() {
        
        [profileImageView, cameraButton, libraryButton, userNameLabel, emailLabel, numberOfMealsLabel, registrationDateLabel, logoutButton, removeAccountButton].forEach({addSubview($0)})
        
        //imageContainer
        profileImageView.
        profileImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.7)//(equalTo: widthAnchor).isActive = true
        
        
        
        imageContainer.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        imageContainer.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageContainer.addSubview(cameraButton)
        imageContainer.addSubview(libraryButton)
        
        //info container
        infoContainer.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        infoContainer.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.25).isActive = true
        infoContainer.topAnchor.constraint(equalTo: imageContainer.bottomAnchor).isActive = true
        
        // two buttons container
        buttonsContainer.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        buttonsContainer.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.25).isActive = true
        buttonsContainer.topAnchor.constraint(equalTo: infoContainer.bottomAnchor).isActive = true
        buttonsContainer.addSubview(logoutButton)
        buttonsContainer.addSubview(removeAccountButton)
        
        
        
        
        //        let stackView = createStackView(views: [imageContainer, infoContainer, buttonsContainer])
        //        addSubview(stackView)
        //        stackView.setAnchor(top: topAnchor,
        //                            leading: leadingAnchor,
        //                            bottom: bottomAnchor,
        //                            trailing: trailingAnchor,
        //                            paddingTop: 0,
        //                            paddingLeft: 0,
        //                            paddingBottom: 0,
        //                            paddingRight: 0)
        //        stackView.addBackground(color: .green)
        
    }
    
    var cameraAction: (() -> Void)?
    var libraryAction: (() -> Void)?
    var logutAction: (() -> Void)?
    var removeAccountAction: (() -> Void)?
    
    //actions
    @objc func handleCamera() {
        print("Camera")
        cameraAction?()
    }
    
    @objc func handleLibrary() {
        print("Library")
        libraryAction?()
    }
    
    @objc func handleLogOut() {
        print("Camera")
        logutAction?()
    }
    
    @objc func handleRemoveAccount() {
        print("Library")
        removeAccountAction?()
    }
}

 
 





let imageContainer: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
}()

let infoContainer: UIView = {
    let view = UIView()
    view.backgroundColor = .gray
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
}()

let buttonsContainer: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
}()
*/
