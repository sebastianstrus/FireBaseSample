////
////  AddMealView.swift
////  FireBaseSample
////
////  Created by Sebastian Strus on 2018-06-19.
////  Copyright © 2018 Sebastian Strus. All rights reserved.
////
//
//import UIKit
//
//class AddMealView: UIScrollView {
//
//    
//    let nameTextField: UITextField = {
//        let tf = UITextField()
//        
//        tf.borderStyle = .none
//        tf.layer.cornerRadius = Device.IS_IPHONE ? 5 : 10
//        tf.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
//        tf.textColor = UIColor(white: 0.9, alpha: 0.8)
//        tf.font = UIFont.systemFont(ofSize: Device.IS_IPHONE ? 17 : 34)
//        tf.autocorrectionType = .no
//        // placeholder
//        var placeholder = NSMutableAttributedString()
//        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Name", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: Device.IS_IPHONE ? 18 : 36), .foregroundColor: UIColor(white: 1, alpha: 0.7)]))
//        tf.attributedPlaceholder = placeholder
//        // anchor
//        tf.setAnchor(width: 0, height: Device.IS_IPHONE ? 40 : 80)
//        tf.setLeftPaddiingPoints(Device.IS_IPHONE ? 20 : 40)
//        
//        return tf
//    }()
//    
//    let imageView: UIImageView = {
//        let iv = UIImageView()
//        iv.contentMode = .scaleAspectFit
//        iv.backgroundColor = .blue
//        return iv
//    }()
//    
//    let imageView2: UIImageView = {
//        let iv = UIImageView()
//        iv.contentMode = .scaleAspectFit
//        iv.backgroundColor = .green
//        return iv
//    }()
//    
//    let emailTextField: UITextField = {
//        let tf = UITextField(placeHolder: "Email")
//        return tf
//    }()
//    
//    let passwordTextField: UITextField = {
//        let tf = UITextField(placeHolder: "Password")
//        return tf
//    }()
//    
//    let confirmPasswordTextField: UITextField = {
//        let tf = UITextField(placeHolder: "Confirm password")
//        return tf
//    }()
//    
//    let submitButton: UIButton = {
//        let button = UIButton(title: "Submit", borderColor: AppColors.GREEN_BORDER)
//        button.addTarget(self, action: #selector(handleSubmit), for: .touchUpInside)
//        return button
//    }()
//    
//    let cancelButton: UIButton = {
//        let button = UIButton(title: "Cancel", borderColor: AppColors.RED_BORDER)
//        button.addTarget(self, action: #selector(handleCancel), for: .touchUpInside)
//        return button
//    }()
//    
//    var submitAction: (() -> Void)?
//    var cancelAction: (() -> Void)?
//    
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupViews()
//    }
//    
//    func setupViews() {
//        //let stackView = createStackView(views: [nameTextField, imageView, imageView2, emailTextField, passwordTextField, confirmPasswordTextField, submitButton, cancelButton])
//        
//        let stackView = UIStackView(arrangedSubviews: [nameTextField, imageView, imageView2, emailTextField, passwordTextField, confirmPasswordTextField, submitButton, cancelButton])
//        stackView.axis = .vertical
//        stackView.distribution = .fillProportionally
//        stackView.spacing = Device.IS_IPHONE ? 10 : 20
//        
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        addSubview(stackView)
//        //stackView.backgroundColor
//        //set layout for stackview
//        stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
//        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true
//        stackView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
//        stackView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
//        
//        //stackView.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: self.frame.width, height: Device.IS_IPHONE ? 530 : 840)
//        //stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
//        
//        
//        
//        //stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
//        imageView.setAnchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 100, height: 100)
//        imageView.centerXAnchor.constraint(equalTo: stackView.centerXAnchor).isActive = true
//        
//        imageView2.setAnchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 100, height: 100)
//        imageView2.centerXAnchor.constraint(equalTo: stackView.centerXAnchor).isActive = true
//    }
//    
//    @objc func handleSubmit(){
//        submitAction?()
//    }
//    
//    @objc func handleCancel(){
//        cancelAction?()
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//}
