//
//  MainViewModel.swift
//  M5StackConnectedToiOS
//
//  Created by Shusuke Ota on 2020/10/28.
//

import UIKit

enum MainSectionType {
    /// 機能
    case function
    
    internal var rows: [MainSectionRowType] {
        switch self {
        case .function:
            return [.bluetooth, .wifi, .nfc, .firebase]
        }
    }
}
/// 機能一覧のセルタイトル
enum MainSectionRowType: String {
    case bluetooth  = "BluetoothLE通信"
    case wifi       = "WiFiアクセスポイント設定"
    case nfc        = "NFC通信"
    case firebase   = "サーバー通信（Firebase）"
}

class MainViewModel: NSObject {
    var sections: [MainSectionType] = []
    
    override init() {
        super.init()
        self.setSections()
    }
}

extension MainViewModel {
    private func setSections() {
        self.sections = [
            .function
        ]
    }
}

extension MainViewModel: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sections[section].rows.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sectionType: MainSectionType = self.sections[indexPath.section]
        switch sectionType {
        case .function:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
            let rowType = sectionType.rows[indexPath.row]
            cell.titleLabel.text = rowType.rawValue
            return cell
        }
    }
}
