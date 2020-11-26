//
//  CashAmountTextFieldDelegate.swift
//  UIKitTextFieldChallenge
//
//  Created by Ataias Pereira Reis on 26/11/20.
//

import Foundation
import UIKit

class CashAmountTextFieldDelegate: NSObject, UITextFieldDelegate {

    let currencySign = "$"

    // Adds $ before the text, e.g. "1" -> "$1" and allows "." and ","
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var value = textField.text!

        let newString = (textField.text! as NSString).replacingCharacters(in: range, with: string)
        let components = newString.components(separatedBy: NSCharacterSet(charactersIn: "0123456789").inverted)
        let decimalString = components.joined().trimLeft(character: "0")
        let length = decimalString.count

        if length > 0 {
            value = "\(currencySign)\(formatNumber(decimalString))"
        } else {
            value = ""
        }
        textField.text = value
        return false
    }

    func formatNumber(_ decimalString: String) -> String {
        switch decimalString.count {
        case 0:
            return "0.00"
        case 1:
            return "0.0\(decimalString)"
        case 2:
            return "0.\(decimalString)"
        default:
            let prefix = decimalString.dropLast(2)
            let decimals = decimalString.dropFirst(prefix.count)
            return "\(prefix).\(decimals)"
        }
    }

}

extension String {
    func deletingPrefix(_ prefix: String) -> String {
        guard self.hasPrefix(prefix) else { return self }
        return String(self.dropFirst(prefix.count))
    }

    func trimLeft(character: Character) -> String {
        var prefix = String(character);
        guard self.hasPrefix(prefix) else { return self }

        while self.hasPrefix(prefix) {
            prefix += String(character)
        }
        return String(self.dropFirst(prefix.count - 1))
    }
}
