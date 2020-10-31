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
        self.setNavigationItem()
    }
}

// MARK: - Initialized Method
extension MainViewController {
    private func setBaseView() {
        self.baseView.tableView.tableFooterView = UIView()
        self.baseView.tableView.delegate = self
        self.baseView.tableView.dataSource = self.viewModel
    }
    private func setNavigationItem() {
        self.navigationItem.title = "M5Stack通信方法一覧"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "戻る", style: .plain, target: nil, action: nil)
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
        // セル選択を解除
        tableView.deselectRow(at: indexPath, animated: true)
        // 各セルをタップした時の処理
        let sectionRowType: MainSectionRowType = self.viewModel.sections[indexPath.row].rows[indexPath.row]
        switch sectionRowType {
        case .bluetooth:
            print("DEBUG: BluetoothLE通信セルがタップされました")
            self.transitionBlePage()
        case .wifi:
            print("DEBUG: WiFiアクセスポイント設定セルがタップされました")
        case .nfc:
            print("DEBUG: NFC通信セルがタップされました")
        case .firebase:
            print("DEBUG: サーバー通信（Firebase）セルがタップされました")
        }
    }
}

extension MainViewController {
    /// BluetoothLE通信ページへ遷移
    private func transitionBlePage() {
        let s = UIStoryboard(name: "BleViewController", bundle: nil)
        let vc = s.instantiateInitialViewController() as! BleViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
