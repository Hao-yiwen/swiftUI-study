//
//  SettingController.swift
//  设置界面
//
//  Created by yw.hao on 2023/10/21.
//

import UIKit

class SettingController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        
        title = "设置界面"
        
        view.addSubview(settingView)
        view.addSubview(collectView)
        
        settingView.snp.makeConstraints{make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(16)
            make.height.equalTo(55)
        }
        
        collectView.snp.makeConstraints{make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalTo(settingView.snp.bottom).offset(1)
            make.height.equalTo(55)
        }
    }
    
    @objc func onSettingClick(_ recognizer: UITapGestureRecognizer) {
        print(12312, recognizer)
    }
    
    lazy var settingView: SettingView = {
        let result = SettingView()
        result.titleView.text = "设置"
        result.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onSettingClick(_:))))
        return result
    }()
    
    lazy var collectView: SettingView = {
        let result = SettingView()
        result.titleView.text = "收藏"
        return result
    }()

}
