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
        // Deleting characters
        if string.isEmpty {
            return true
        }

        // Avoid characters that are not numbers
        if Int(string) == nil {
            return false
        }

        return textField.text!.count < 5
    }
}
