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
    }
}

extension MainBaseView {
    private func registerTableViewCell() {
        let nib = UINib(nibName: "MainTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "MainTableViewCell")
    }
}
