//
//  ViewController.swift
//  AppleSigninForm
//
//  Created by sainath bamen on 03/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
        
    @IBOutlet weak var google: UIButton!
    @IBOutlet weak var instagra: UIButton!
    @IBOutlet weak var facebook: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        addBottomLine(frame: CGRect(x: 1, y: Int(emailTextField.frame.height), width: Int(emailTextField.frame.width), height: 2), textField: emailTextField)
        
        addBottomLine(frame: CGRect(x: 1, y: Int(passwordTextField.frame.height), width: Int(passwordTextField.frame.width), height: 2), textField: passwordTextField)
        
        emailTextField.addTextImage(imageNamed: "apple-mail")
        passwordTextField.addTextImage(imageNamed: "pass")
        
    }
    
    func addBottomLine(frame:CGRect, textField: UITextField){
        let bottomLine = CALayer()
        bottomLine.frame = frame
        bottomLine.backgroundColor = UIColor.systemGray6.cgColor
        
        textField.borderStyle = .none
        textField.layer.addSublayer(bottomLine)
    }
        }




extension UITextField{
    func addTextImage(imageNamed:String){
        let imageView = UIImageView(frame: CGRect(x: 5, y: 5, width: 25, height: 35))
        imageView.image = UIImage(named: imageNamed)
        let imageContainerView = UIView(frame: CGRect(x: 5, y: 0, width: 60, height: 40))
        imageContainerView.addSubview(imageView)
        leftView = imageContainerView
        leftViewMode = .always
        self.tintColor = .systemYellow
        
        
        
    }
    
    
}
