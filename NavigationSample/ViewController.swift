//
//  ViewController.swift
//  NavigationSample
//
//  Created by Tetsuro Nakamura on 2023/04/06.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func tappedPush(sender: UIButton) {
        let vc = NextViewController.make(label: "push", level: 1)
        navigationController?.pushViewController(vc, animated: true)
    }
}

