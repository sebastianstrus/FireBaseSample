//
//  AccountViewController.swift
//  TabBarProg
//
//  Created by Sebastian Strus on 2018-06-12.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    
    var accountView: AccountView!
    
    
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar(title: "Account")
        setupView()
    }

    func setupView() {
        accountView = AccountView(frame: self.view.frame)
        accountView.cameraAction = cameraPressed
        accountView.libraryAction = libraryPressed
        accountView.logutAction = logoutPressed
        accountView.removeAccountAction = removeAccountPressed
        self.view.addSubview(accountView)
        
        accountView.setAnchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        [imageContainer, infoContainer, buttonsContainer].forEach({accountView.addSubview($0)})
        
        //imageContainer
        imageContainer.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        imageContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        imageContainer.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    
        imageContainer.addSubview(accountView.profileImageView)
        imageContainer.addSubview(accountView.cameraButton)
        imageContainer.addSubview(accountView.libraryButton)
        
        accountView.profileImageView.heightAnchor.constraint(equalTo: imageContainer.heightAnchor, multiplier: 0.7).isActive = true
        accountView.profileImageView.widthAnchor.constraint(equalTo: imageContainer.heightAnchor, multiplier: 0.7).isActive = true
        accountView.profileImageView.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor).isActive = true
        accountView.profileImageView.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor).isActive = true
        
        accountView.cameraButton.setAnchor(top: accountView.profileImageView.bottomAnchor, leading: accountView.profileImageView.leadingAnchor, bottom: nil, trailing: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0)
        accountView.cameraButton.widthAnchor.constraint(equalTo: accountView.profileImageView.widthAnchor, multiplier: 0.4).isActive = true
        accountView.libraryButton.setAnchor(top: accountView.profileImageView.bottomAnchor, leading: nil, bottom: nil, trailing: accountView.profileImageView.trailingAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 10)
        accountView.libraryButton.widthAnchor.constraint(equalTo: accountView.profileImageView.widthAnchor, multiplier: 0.4).isActive = true
        
        
        
        //info container
        infoContainer.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        infoContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
        infoContainer.topAnchor.constraint(equalTo: imageContainer.bottomAnchor).isActive = true
        
        let stackview = view.createStackView(views: [accountView.userNameLabel, accountView.emailLabel, accountView.numberOfMealsLabel, accountView.registrationDateLabel])
        infoContainer.addSubview(stackview)
        stackview.setAnchor(top: infoContainer.topAnchor, leading: infoContainer.leadingAnchor, bottom: infoContainer.bottomAnchor, trailing: infoContainer.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        stackview.centerXAnchor.constraint(equalTo: infoContainer.centerXAnchor).isActive = true
        

        
        
        
        // two buttons container
        buttonsContainer.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        buttonsContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
        buttonsContainer.topAnchor.constraint(equalTo: infoContainer.bottomAnchor).isActive = true
        
        buttonsContainer.addSubview(accountView.logoutButton)
        buttonsContainer.addSubview(accountView.removeAccountButton)
        
        
    }
    
    
    //actions
    func cameraPressed() {
        Swift.print("Camera pressed")
    }
    
    func libraryPressed() {
        Swift.print("Library pressed")
    }
    
    func logoutPressed() {
        Swift.print("Logout pressed")
    }
    
    func removeAccountPressed() {
        Swift.print("Remove account pressed")
    }
}
