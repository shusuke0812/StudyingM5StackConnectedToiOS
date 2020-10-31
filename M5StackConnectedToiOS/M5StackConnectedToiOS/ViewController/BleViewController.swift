//
//  BleViewController.swift
//  M5StackConnectedToiOS
//
//  Created by Shusuke Ota on 2020/10/31.
//

import UIKit

class BleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUI()
    }
}

extension BleViewController {
    private func setUI() {
        self.navigationItem.title = "BluetoothEL通信"
    }
}
