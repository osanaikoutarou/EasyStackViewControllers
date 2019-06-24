//
//  AViewController.swift
//  EasyStackViewControllers
//
//  Created by osanai on 2019/06/24.
//  Copyright © 2019 osanai. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    override func loadView() {
        super.loadView()
        self.view.translatesAutoresizingMaskIntoConstraints = false
    }

    @IBAction func tappedCloseKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
}
