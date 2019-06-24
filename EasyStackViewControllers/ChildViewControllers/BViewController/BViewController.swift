//
//  BViewController.swift
//  EasyStackViewControllers
//
//  Created by osanai on 2019/06/24.
//  Copyright © 2019 osanai. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    @IBOutlet weak var imageHeightConstraint: NSLayoutConstraint!

    override func loadView() {
        super.loadView()
        self.view.translatesAutoresizingMaskIntoConstraints = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapChangeImageSize(_ sender: Any) {
        if imageHeightConstraint.constant == 160 {
            imageHeightConstraint.constant = 250
        }
        else {
            imageHeightConstraint.constant = 160
        }
//        UIView.animate(withDuration: 0.3) {
//            self.view.layoutIfNeeded()
//        }
    }

}
