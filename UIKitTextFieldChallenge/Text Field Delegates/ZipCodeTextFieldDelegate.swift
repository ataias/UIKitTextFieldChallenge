//
//  ZipCodeTextFieldDelegate.swift
//  UIKitTextFieldChallenge
//
//  Created by Ataias Pereira Reis on 26/11/20.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // FIXME typing is fine, but if you paste long strings of digits, the string becomes longer
        return string.isEmpty || (Int(string) != nil && textField.text!.count < 5)
    }
}
