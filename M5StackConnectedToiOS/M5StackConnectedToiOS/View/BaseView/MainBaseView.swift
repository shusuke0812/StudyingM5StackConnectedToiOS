//
//  MainBaseView.swift
//  M5StackConnectedToiOS
//
//  Created by Shusuke Ota on 2020/10/28.
//

import UIKit

class MainBaseView: UIView {
    @IBOutlet weak var tableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.registerTableViewCell()
        self.setTableView()
    }
}

extension MainBaseView {
    private func registerTableViewCell() {
        let nib = UINib(nibName: "MainTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "MainTableViewCell")
    }
    private func setTableView() {
        self.tableView.backgroundColor = UIColor.setRGB(r: 240, g: 240, b: 240, alpha: 1.0)
    }
}
