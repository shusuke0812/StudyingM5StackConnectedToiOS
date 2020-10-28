//
//  MainTableViewCell.swift
//  M5StackConnectedToiOS
//
//  Created by Shusuke Ota on 2020/10/28.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setViews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension MainTableViewCell {
    private func setViews() {
        self.titleLabel.text = "機能タイトル"
    }
}
