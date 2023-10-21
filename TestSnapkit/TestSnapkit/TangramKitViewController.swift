//
//  ViewController.swift
//  TestSnapkit
//
//  Created by yw.hao on 2023/10/19.
//

import UIKit
import TangramKit


class TangramKitViewController: UIViewController {
    var container:UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        //创建跟容器
        self.container = TGRelativeLayout()
        
        // 从安全区开始
        container.tg_top.equal(TGLayoutPos.tg_safeAreaMargin).offset(16)
        container.tg_leading.equal(TGLayoutPos.tg_safeAreaMargin).offset(16)
        container.tg_trailing.equal(TGLayoutPos.tg_safeAreaMargin).offset(16)
        container.tg_bottom.equal(TGLayoutPos.tg_safeAreaMargin).offset(16)
        
        container.backgroundColor = .white
        view.addSubview(container)
        
        // logo
        let logoView = UIImageView()
        logoView.image = UIImage(named: "Logo")
        logoView.tg_width.equal(100)
        logoView.tg_height.equal(100)
        logoView.tg_top.equal(100)
        logoView.tg_centerX.equal(0)
        container.addSubview(logoView)
        
        let bottomContainer = TGLinearLayout(.vert)
        bottomContainer.tg_width.equal(.fill)
        bottomContainer.tg_height.equal(.wrap)
        bottomContainer.tg_bottom.equal(0)
        bottomContainer.tg_gravity = TGGravity.horz.center
        bottomContainer.tg_space = 30
        container.addSubview(bottomContainer)
        
        
        bottomContainer.addSubview(phoneLoginButton)
        
        bottomContainer.addSubview(primaryButton)
        
        // MARK: 第三方容器
        let thirdLoginContainer = TGLinearLayout(.horz)
        thirdLoginContainer.tg_width.equal(.fill)
        thirdLoginContainer.tg_height.equal(.wrap)
        thirdLoginContainer.tg_gravity = TGGravity.horz.around
        bottomContainer.addSubview(thirdLoginContainer)
        let arr: [String] = ["airplane", "figure.walk", "car", "mic"]
        
        for _ in 0..<4 {
            let buttonView = UIButton(type: .custom)
            buttonView.setImage(UIImage(systemName: arr.randomElement()!), for: .normal)
            buttonView.tg_width.equal(50)
            buttonView.tg_height.equal(50)
                    
            // 设置按钮为圆形
            buttonView.layer.cornerRadius = 25

            // 设置边框
            buttonView.layer.borderWidth = 1.0
            buttonView.layer.borderColor = UIColor.orange.cgColor

            thirdLoginContainer.addSubview(buttonView)
        }
        
        let argumentLabelView = UILabel()
        
        argumentLabelView.text = "登录即表示你同意《用户协议》和《隐私政策》"
        
        argumentLabelView.font = UIFont.systemFont(ofSize: 12)
        
        argumentLabelView.textColor = .gray
        
        argumentLabelView.tg_width.equal(.wrap)
        argumentLabelView.tg_height.equal(.wrap)
        
        bottomContainer.addSubview(argumentLabelView)
        
    }
    @objc func phoneLoginClick(_ sender: UIButton) {
        print("\(sender.titleLabel!.text!)")
        
        let target = SettingController()
        navigationController?.pushViewController(target, animated: true)
    }
    

    lazy var phoneLoginButton: UIButton = {
        let r = UIButton(type: .system)
        r.setTitle("手机号登录", for: .normal)
        
        r.addTarget(self, action: #selector(phoneLoginClick(_:)), for: .touchUpInside)
        
        r.backgroundColor = .red
        
        r.layer.cornerRadius = 5
        
        r.setTitleColor(.white, for: .normal)
        
        r.setTitleColor(.gray, for: .highlighted)
        
        r.tg_width.equal(.fill)
        r.tg_height.equal(42)
        return r
    }()
    
    @objc func primaryClick(_ sender: UIButton) {
        
    }

    
    lazy var primaryButton: UIButton = {
        let r = UIButton(type: .system)
        r.setTitle("用户名和密码登录", for: .normal)
        
        r.addTarget(self, action: #selector(primaryClick(_:)), for: .touchUpInside)
        
        r.backgroundColor = .clear
        
        r.layer.cornerRadius = 21
        
        r.layer.borderWidth = 1
        r.layer.borderColor = UIColor.red.cgColor
        
        r.setTitleColor(.red, for: .normal)
        
        r.setTitleColor(.gray, for: .highlighted)
        
        r.tg_width.equal(.fill)
        r.tg_height.equal(42)
        return r
    }()
}

