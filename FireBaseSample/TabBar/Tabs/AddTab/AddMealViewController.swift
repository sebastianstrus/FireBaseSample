import UIKit
import Cosmos
import MapKit
//import PlaygroundSupport

class AddMealViewController : UIViewController {
    
    //scroll view
    lazy var scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.backgroundColor = .white
        //sv.contentSize.height = 2000 // automatically
        return sv
    }()
    
    
//    //all views for testing
//    let topMostView: UIView = {
//        let v = UIView()
//        v.backgroundColor = .gray
//        return v
//    }()
//
//    let middleMostView: UIView = {
//        let v = UIView()
//        v.backgroundColor = .darkGray
//        return v
//    }()
//
//    let bottomMostView: UIView = {
//        let v = UIView()
//        v.backgroundColor = .gray
//        return v
//    }()
    
    
    
    
    
    
    let titleTF: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter title"
        tf.backgroundColor = .white
        tf.setLeftPaddiingPoints(Device.IS_IPHONE ? 20 : 40)
        return tf
    }()
    
    let mealImageView: UIImageView = {
        //let iv = UIImageView()
        let iv = UIImageView(image: #imageLiteral(resourceName: "table"))
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.backgroundColor = .red
        iv.contentMode = .scaleAspectFill
        
        iv.contentMode = UIView.ContentMode.scaleAspectFill
        
        return iv
    }()
    
    let cameraButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Camera", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setTitleColor(UIColor.purple, for: .normal)
        return button
    }()
    
    let libraryButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Library", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setTitleColor(UIColor.purple, for: .normal)
        return button
    }()
    
    
    let cosmosView: CosmosView = {
        let cv = CosmosView()
        cv.settings.updateOnTouch = true
        cv.settings.fillMode = .half
        cv.settings.starSize = 40
        cv.settings.starMargin = 10
        cv.settings.filledColor = UIColor.orange
        cv.settings.emptyBorderColor = UIColor.orange
        cv.settings.filledBorderColor = UIColor.orange
        cv.backgroundColor = .white
        return cv
    }()
    
    let selectDateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Select date", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setTitleColor(UIColor.purple, for: .normal)
        return button
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        //set current Date as default
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        label.text = formatter.string(from: date)
        return label
    }()
    
    let mealDescriptionTF: UITextField = {
        let tf = UITextField()
        tf.placeholder = "It was very tasty. :)"
        tf.backgroundColor = UIColor.lightGray
        return tf
    }()
    
    let mapView: MKMapView = {
        let mv = MKMapView()
        return mv
    }()

    
    let saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Save meal", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setTitleColor(UIColor.purple, for: .normal)
        return button
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar(title: "Add meal")
        setupScrollView()
        setupViews()
        
        //handle keyboard
        NotificationCenter.default.addObserver(self, selector: #selector(AddMealViewController.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(AddMealViewController.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func setupScrollView() {
        view.addSubview(scrollView)
        scrollView.setAnchor(top: view.safeTopAnchor, leading: view.safeLeadingAnchor, bottom: view.safeBottomAnchor, trailing: view.safeTrailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    func setupViews() {
        [titleTF, mealImageView, cameraButton, libraryButton, cosmosView, selectDateButton, dateLabel, mealDescriptionTF, mapView, saveButton].forEach({scrollView.addSubview($0)})

        //title textField
        titleTF.translatesAutoresizingMaskIntoConstraints = false
        titleTF.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 30).isActive = true
        titleTF.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        titleTF.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleTF.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleTF.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
        
        //image
        mealImageView.setAnchor(top: titleTF.bottomAnchor, leading: nil, bottom: nil, trailing: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        mealImageView.widthAnchor.constraint(equalTo: titleTF.widthAnchor).isActive = true
        mealImageView.heightAnchor.constraint(equalTo: titleTF.widthAnchor).isActive = true
        mealImageView.centerXAnchor.constraint(equalTo: titleTF.centerXAnchor).isActive = true
        
        // camera and library buttons
        cameraButton.setAnchor(top: mealImageView.bottomAnchor, leading: mealImageView.leadingAnchor, bottom: nil, trailing: nil, paddingTop: 10, paddingLeft: 20, paddingBottom: 0, paddingRight: 0, width: CGFloat(Device.SCREEN_WIDTH/4), height: 30)
        libraryButton.setAnchor(top: mealImageView.bottomAnchor, leading: nil, bottom: nil, trailing: mealImageView.trailingAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 20, width: CGFloat(Device.SCREEN_WIDTH/4), height: 30)
        
        //cosmos view
        cosmosView.setAnchor(top: cameraButton.bottomAnchor, leading: nil, bottom: nil, trailing: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        cosmosView.centerXAnchor.constraint(equalTo: mealImageView.centerXAnchor).isActive = true
        
        //date info
        selectDateButton.setAnchor(top: cosmosView.bottomAnchor, leading: mealImageView.leadingAnchor, bottom: nil, trailing: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 100, height: 40)
        dateLabel.setAnchor(top: cosmosView.bottomAnchor, leading: selectDateButton.trailingAnchor, bottom: nil, trailing: mealImageView.trailingAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 100, height: 40)
        
        //description field
        mealDescriptionTF.setAnchor(top: selectDateButton.bottomAnchor, leading: mealImageView.leadingAnchor, bottom: nil, trailing: mealImageView.trailingAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 100)
        
        mapView.setAnchor(top: mealDescriptionTF.bottomAnchor, leading: mealDescriptionTF.leadingAnchor, bottom: nil, trailing: mealDescriptionTF.trailingAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: CGFloat(Device.SCREEN_WIDTH * 2 / 3))
        
        saveButton.setAnchor(top: mapView.bottomAnchor, leading: nil, bottom: scrollView.bottomAnchor, trailing: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 20, paddingRight: 0, width: 150, height: 50)
        saveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    
    // Handle keyboard
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0{
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }
    @objc func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y != 0{
                self.view.frame.origin.y += keyboardSize.height
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    
    
    //set views for testing
//    func setupViews() {
//        scrollView.addSubview(topMostView)
//        topMostView.translatesAutoresizingMaskIntoConstraints = false
//        topMostView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
//        topMostView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
//        topMostView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//        topMostView.heightAnchor.constraint(equalToConstant: 600).isActive = true
//
//        scrollView.addSubview(middleMostView)
//        middleMostView.translatesAutoresizingMaskIntoConstraints = false
//        middleMostView.topAnchor.constraint(equalTo: topMostView.bottomAnchor).isActive = true
//        middleMostView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
//        middleMostView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//        middleMostView.heightAnchor.constraint(equalToConstant: 600).isActive = true
//
//        scrollView.addSubview(bottomMostView)
//        bottomMostView.translatesAutoresizingMaskIntoConstraints = false
//        bottomMostView.topAnchor.constraint(equalTo: middleMostView.bottomAnchor).isActive = true
//        bottomMostView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
//        bottomMostView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//        bottomMostView.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        bottomMostView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
//    }
    
    
    
}


