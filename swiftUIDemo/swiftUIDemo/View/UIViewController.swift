//
//  UIViewController.swift
//  swiftUIDemo
//
//  Created by yw.hao on 2023/11/1.
//

import SwiftUI
import UIKit
import TangramKit

struct UIKitViewController: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIViewController

    func makeUIViewController(context: UIViewControllerRepresentableContext<UIKitViewController>) -> UIViewController {
        let viewController = UIViewController()
        viewController.view.backgroundColor = UIColor.red
        
        let copyRightView = UILabel()
        copyRightView.tg_width.equal(.wrap)
        copyRightView.tg_height.equal(.wrap)
        copyRightView.tg_top.equal(200)
        copyRightView.tg_centerX.equal(0)
        copyRightView.font = UIFont.systemFont(ofSize: 12)
        copyRightView.textColor = .gray
        let year = SuperDateUtil.currentYear()
        copyRightView.text = String(format: "Copyright @c %d Ixuea, All Rights Reserved", year)
//        copyRightView.text = NSLocalizedString("ErrorNetworkUnknownHost", comment: "")
//        copyRightView.text = R.string.localizable.errorNetworkUnknownHost()
        let layout = TGLinearLayout(.vert)
        layout.tg_width.equal(.fill)
        layout.tg_height.equal(.fill)
        layout.addSubview(copyRightView)

        viewController.view.addSubview(layout)
        
        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<UIKitViewController>) {
        // 更新视图控制器的代码
    }
}
