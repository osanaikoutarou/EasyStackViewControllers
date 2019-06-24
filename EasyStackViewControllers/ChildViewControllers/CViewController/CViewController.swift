//
//  CViewController.swift
//  EasyStackViewControllers
//
//  Created by osanai on 2019/06/24.
//  Copyright © 2019 osanai. All rights reserved.
//

import UIKit

class CViewController: UIViewController {

    var dViewControllers: [DViewController] = []
    @IBOutlet weak var stackView: UIStackView!

    override func loadView() {
        super.loadView()
        self.view.translatesAutoresizingMaskIntoConstraints = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedAdd(_ sender: Any) {

        let dViewController = UIStoryboard(name: "D", bundle: nil).instantiateInitialViewController() as! DViewController

        dViewController.willMove(toParent: self)
        addChild(dViewController)
        stackView.addArrangedSubview(dViewController.view)
        dViewController.didMove(toParent: self)

        dViewControllers.append(dViewController)
    }

}
