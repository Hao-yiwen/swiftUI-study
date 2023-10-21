//
//  ViewController.swift
//  TestSnapkit
//
//  Created by yw.hao on 2023/10/19.
//

import UIKit

import SnapKit

class ViewController: UIViewController {
    var container:UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        //创建跟容器
        self.container = UIView()
        container.backgroundColor = .white
        view.addSubview(container)
        
        // logo
        let logoView = UIImageView()
        logoView.image = UIImage(named: "Logo")
        logoView.layer.cornerRadius = 20
        container.addSubview(logoView)
        
        container.addSubview(phoneLoginButton)
        
        container.addSubview(primaryButton)
        
        let argumentLabelView = UILabel()
        
        argumentLabelView.text = "登录即表示你同意《用户协议》和《隐私政策》"
        
        argumentLabelView.font = UIFont.systemFont(ofSize: 12)
        
        argumentLabelView.textColor = .gray
        
        container.addSubview(argumentLabelView)
        
        // self.container.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        // MARK: 约束
        // 跟容器
        container.snp.makeConstraints{make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(16)
            
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-16)
            
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(16)
            
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).offset(-16)
        }
        
        // MARK: 约束
        logoView.snp.makeConstraints{make in
            make.width.equalTo(100)
            
            make.height.equalTo(100)
            
            make.top.equalTo(100)
            
            make.centerX.equalToSuperview()
        }
        
        // MARK: 协议文本
        argumentLabelView.snp.makeConstraints{make in
            // 距离底部
            make.bottom.equalToSuperview()
            
            // 水平居中
            make.centerX.equalToSuperview()
        }
        
        //
        primaryButton.snp.makeConstraints{ make in
            make.width.equalToSuperview()
            make.height.equalTo(42)
            
            make.bottom.equalTo(argumentLabelView.snp.top).offset(-30)
        }
        
        // MARK: 登录按钮
        phoneLoginButton.snp.makeConstraints{ make in
            make.width.equalToSuperview()
            make.height.equalTo(42)
            
            make.bottom.equalTo(primaryButton.snp.top).offset(-30)
        }
        
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
        return r
    }()
}

