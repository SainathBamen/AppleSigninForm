//
//  MyViewController.swift
//  AppleSigninForm
//
//  Created by sainath bamen on 04/02/23.
//

import UIKit

class MyViewController: UIViewController {
    
    
    @IBOutlet weak var NameTextField: UITextField!
    
    @IBOutlet weak var emailTextField2: UITextField!
    
    @IBOutlet weak var passwordTextField2: UITextField!
        

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        addBottomLine2(frame: CGRect(x: 5, y: Int(emailTextField2.frame.height), width: Int(emailTextField2.frame.width), height: 2), textField: emailTextField2)
        
        addBottomLine2(frame: CGRect(x: 5, y: Int(passwordTextField2.frame.height), width: Int(passwordTextField2.frame.width), height: 2), textField: passwordTextField2)
        
        addBottomLine2(frame: CGRect(x: 5, y: Int(NameTextField.frame.height), width: Int(NameTextField.frame.width), height: 2), textField: NameTextField)
        
        
        emailTextField2.addTextImage(imageNamed: "apple-mail")
        passwordTextField2.addTextImage(imageNamed: "pass")
        NameTextField.addTextImage(imageNamed: "nameLogo")
        
        
        

    }
    
    
    func addBottomLine2(frame:CGRect, textField: UITextField){
        let bottomLine = CALayer()
        bottomLine.frame = frame
        bottomLine.backgroundColor = UIColor.systemGray6.cgColor
        
        textField.borderStyle = .none
        textField.layer.addSublayer(bottomLine)
    }
    

}


extension UITextField{
    func addTextImage2(imageNamed:String){
        let imageView = UIImageView(frame: CGRect(x: 5, y: 5, width: 25, height: 35))
        imageView.image = UIImage(named: imageNamed)
        let imageContainerView = UIView(frame: CGRect(x: 5, y: 0, width: 60, height: 40))
        imageContainerView.addSubview(imageView)
        leftView = imageContainerView
        leftViewMode = .always
        self.tintColor = .systemYellow
        
        
        
    }
    
    
}
