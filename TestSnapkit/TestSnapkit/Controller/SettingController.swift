//
//  SettingController.swift
//  设置界面
//
//  Created by yw.hao on 2023/10/21.
//

import UIKit
import TangramKit

class SettingController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        
        title = "设置界面"
        
        let container = TGLinearLayout(.vert)
        container.tg_width.equal(.fill)
        container.tg_height.equal(.wrap)
        container.tg_top.equal(TGLayoutPos.tg_safeAreaMargin).offset(16)
        container.tg_space = 1
        
        container.addSubview(settingView)
        container.addSubview(collectView)
        
        view.addSubview(container)
        
    }
    
    @objc func onSettingClick(_ recognizer: UITapGestureRecognizer) {
        print(12312, recognizer)
    }
    
    lazy var settingView: TangramKitSettingView = {
        let result = TangramKitSettingView()
        result.titleView.text = "设置"
        result.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onSettingClick(_:))))
        return result
    }()
    
    lazy var collectView: TangramKitSettingView = {
        let result = TangramKitSettingView()
        result.titleView.text = "收藏"
        return result
    }()

}
