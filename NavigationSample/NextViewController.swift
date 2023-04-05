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
    private var level: Int = 0

    static func make(label: String, level: Int) -> NextViewController {
        let storyboard = UIStoryboard(name: "NextViewController", bundle: .main)
        let vc = storyboard.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        vc.text = label
        vc.level = level
        return vc
    }

    override func viewDidLoad() {
        label.text = "\(text): \(level)"
    }

    @IBAction private func tappedButton1() {
        let vc = NextViewController.make(label: "push", level: level + 1)
        navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction private func tappedButton2() {
        let vc = NextViewController.make(label: "present", level: level + 1)
        navigationController?.present(vc, animated: true)
    }
}
