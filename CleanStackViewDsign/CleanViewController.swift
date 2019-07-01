//
//  CleanViewController.swift
//  EasyStackViewControllers
//
//  Created by osanai on 2019/07/01.
//  Copyright © 2019 osanai. All rights reserved.
//

import UIKit

class CleanViewController: UIViewController {

    @IBOutlet weak var containerView1: UIView!
    @IBOutlet weak var containerView2: UIView!
    @IBOutlet var containerViews3: [UIView]!

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Clean viewDidLoad")

        for index in containerViews3.indices {
            let v = containerViews3[index]
            if let childVC = embedVC(view: v) as? CleanParts3ViewController {
                childVC.label.text = "hoge\(index)"
            }
        }

        (embedVC(view: containerView1) as? CleanParts1ViewController)?.didChangeTextField = { text in
            (self.embedVC(view: self.containerView2) as? CleanParts2ViewController)?.label.text = text
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("ほ")
    }
}

extension UIViewController {
    func embedVC(view: UIView) -> UIViewController? {
        for childVC in children {
            if view.subviews.contains(childVC.view) {
                return childVC
            }
        }
        return nil
    }
}
