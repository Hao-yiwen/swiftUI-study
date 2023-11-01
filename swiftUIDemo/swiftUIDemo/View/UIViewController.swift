//
//  UIViewController.swift
//  swiftUIDemo
//
//  Created by yw.hao on 2023/11/1.
//

import SwiftUI
import UIKit

struct UIKitViewController: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIViewController

    func makeUIViewController(context: UIViewControllerRepresentableContext<UIKitViewController>) -> UIViewController {
        let viewController = UIViewController()
        viewController.view.backgroundColor = UIColor.red
        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<UIKitViewController>) {
        // 更新视图控制器的代码
    }
}
