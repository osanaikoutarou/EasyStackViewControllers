//
//  ViewController.swift
//  EasyStackViewControllers
//
//  Created by osanai on 2019/06/24.
//  Copyright © 2019 osanai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.isScrollEnabled = true
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let gesture = UITapGestureRecognizer(target: self, action: #selector(viewDidTap(sender:)))
        view.addGestureRecognizer(gesture)
    }

    @objc func viewDidTap(sender: Any) {
        view.endEditing(true)
    }


}

