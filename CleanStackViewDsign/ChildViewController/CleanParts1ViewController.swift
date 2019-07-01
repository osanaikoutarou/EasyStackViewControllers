//
//  CleanParts1ViewController.swift
//  EasyStackViewControllers
//
//  Created by osanai on 2019/07/01.
//  Copyright © 2019 osanai. All rights reserved.
//

import UIKit

class CleanParts1ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    var didChangeTextField:((_ text: String) -> Void)?

    override func loadView() {
        super.loadView()
        self.view.translatesAutoresizingMaskIntoConstraints = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        textField.delegate = self
    }

}

extension CleanParts1ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        didChangeTextField?(textField.text!)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
}
