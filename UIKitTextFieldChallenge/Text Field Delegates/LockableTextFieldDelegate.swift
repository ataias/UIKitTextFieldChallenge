//
//  LockableTextFieldDelegate.swift
//  UIKitTextFieldChallenge
//
//  Created by Ataias Pereira Reis on 26/11/20.
//

import Foundation
import UIKit

class LockableTextFieldDelegate: NSObject, UITextFieldDelegate {

    var lockableTextSwitch: UISwitch!

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return lockableTextSwitch.isOn
    }

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return lockableTextSwitch.isOn
    }
}

