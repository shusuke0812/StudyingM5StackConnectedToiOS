//
//  ViewController.swift
//  M5StackConnectedToiOS
//
//  Created by Shusuke Ota on 2020/10/28.
//

import UIKit

class MainViewController: UIViewController {
    
    /// BaseView
    private var baseView: MainBaseView { return self.view as! MainBaseView}
    /// ViewModel
    private var viewModel: MainViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = MainViewModel()
        self.setBaseView()
    }
}

// MARK: - Initialized Method
extension MainViewController {
    private func setBaseView() {
        self.baseView.tableView.tableFooterView = UIView()
        self.baseView.tableView.delegate = self
        self.baseView.tableView.dataSource = self.viewModel
    }
}

// MARK: - Delegate Method
extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let sectionType: MainSectionType = self.viewModel.sections[indexPath.section]
        switch sectionType {
        case .function:
            return 55
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sectionRowType: MainSectionRowType = self.viewModel.sections[indexPath.row].rows[indexPath.row]
        switch sectionRowType {
        case .bluetooth:
            print("DEBUG: BluetoothLE通信セルがタップされました")
        case .wifi:
            print("DEBUG: WiFiアクセスポイント設定セルがタップされました")
        case .nfc:
            print("DEBUG: NFC通信セルがタップされました")
        case .firebase:
            print("DEBUG: サーバー通信（Firebase）セルがタップされました")
        }
    }
}
