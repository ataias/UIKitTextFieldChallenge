//
//  ViewController.swift
//  UIKitTextFieldChallenge
//
//  Created by Ataias Pereira Reis on 25/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zipCode: UITextField!
    @IBOutlet weak var cashAmount: UITextField!
    @IBOutlet weak var lockableText: UITextField!
    @IBOutlet weak var lockableTextSwitch: UISwitch!

    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashAmountDelegate = CashAmountTextFieldDelegate()
    let lockableTextDelegate = LockableTextFieldDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        zipCode.delegate = zipCodeDelegate
        cashAmount.delegate = cashAmountDelegate

        lockableTextDelegate.lockableTextSwitch = lockableTextSwitch
        lockableText.delegate = lockableTextDelegate
    }


}

