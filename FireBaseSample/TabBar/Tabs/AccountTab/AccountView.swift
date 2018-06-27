//
//  LoginView.swift
//  SnapKitSample
//
//  Created by Sebastian Strus on 2018-06-01.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

class AccountView: UIView {
    
    // views to imageContainer
    var profileImageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "image_user"))
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.layer.borderWidth = Device.IS_IPHONE ? 0.5 : 1
        iv.layer.borderColor = UIColor.darkGray.cgColor
        return iv
    }()
    
    let cameraButton: UIButton = {
        let button = UIButton(title: "Camera", color: AppColors.DODGER_BLUE)
        button.addTarget(self, action: #selector(handleCamera), for: .touchUpInside)
        return button
    }()
    
    let libraryButton: UIButton = {
        let button = UIButton(title: "Library", color: AppColors.DODGER_BLUE)
        button.addTarget(self, action: #selector(handleLibrary), for: .touchUpInside)
        return button
    }()
    
    
    // views to info container
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
    
    // buttons to buttonsContainer
    let logoutButton: UIButton = {
        let button = UIButton(title: "Log out", color: AppColors.DODGER_BLUE)
        return button
    }()
    
    let removeAccountButton: UIButton = {
        let button = UIButton(title: "Remove account", color: AppColors.RED_BORDER)
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
    
    
    // Actions
    var cameraAction: (() -> Void)?
    var libraryAction: (() -> Void)?
    var logutAction: (() -> Void)?
    var removeAccountAction: (() -> Void)?
    
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
        print("RemoveAccount")
        removeAccountAction?()
    }
}
