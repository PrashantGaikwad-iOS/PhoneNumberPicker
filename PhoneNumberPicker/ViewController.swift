//
//  ViewController.swift
//  PhoneNumberPicker
//
//  Created by Prashant G on 1/26/19.
//  Copyright © 2019 Prashant G. All rights reserved.
//

import UIKit
import FlagPhoneNumber

class ViewController: UIViewController {
    
    @IBOutlet var phoneNumberTextField: FPNTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        phoneNumberTextField.setBottomBorder()
        //phoneNumberTextField.setPadding()
    }
}

extension UITextField {
    
    func setBottomBorder() {
        self.layer.borderColor = UIColor.orange.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
    
    func setPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}

extension ViewController: FPNTextFieldDelegate {
    
    func fpnDidSelectCountry(name: String, dialCode: String, code: String) {
        print(name, dialCode, code) // Output "France", "+33", "FR"
    }
    
    func fpnDidValidatePhoneNumber(textField: FPNTextField, isValid: Bool) {
        if isValid {
            // Do something...
//            textField.getFormattedPhoneNumber(format: .E164)          // Output "+33600000001"
//            textField.getFormattedPhoneNumber(format: .International)  // Output "+33 6 00 00 00 01"
//            textField.getFormattedPhoneNumber(format: .National)       // Output "06 00 00 00 01"
//            textField.getFormattedPhoneNumber(format: .RFC3966)        // Output "tel:+33-6-00-00-00-01"
//            textField.getRawPhoneNumber()                               // Output "600000001"
        } else {
            // Do something...
        }
    }
}
