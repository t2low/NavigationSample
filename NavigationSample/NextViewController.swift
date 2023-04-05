//
//  NextViewController.swift
//  NavigationSample
//
//  Created by Tetsuro Nakamura on 2023/04/06.
//

import UIKit

class NextViewController: UIViewController {
    @IBOutlet private weak var label: UILabel!
    private var text: String = ""

    static func make(label: String) -> NextViewController {
        let storyboard = UIStoryboard(name: "NextViewController", bundle: .main)
        let vc = storyboard.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        vc.text = label
        return vc
    }

    override func viewDidLoad() {
        label.text = text
    }
}
