//
//  SettingView.swift
// 设置item
//  TestSnapkit
//
//  Created by yw.hao on 2023/10/21.
//

import UIKit

class SettingView: UIView {
    init() {
        super.init(frame: CGRect.zero)
        innerInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        innerInit()
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        iconView.snp.makeConstraints{make in
            make.left.equalToSuperview().offset(16)
            make.centerY.equalToSuperview()
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
        titleView.snp.makeConstraints{make in
            make.left.equalToSuperview().offset(46)
            make.centerY.equalToSuperview()
        }
        
        moreIconView.snp.makeConstraints{make in
            make.right.equalToSuperview().offset(-16)
            make.centerY.equalToSuperview()
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
    }
    
    func innerInit() {
        backgroundColor = .white
        addSubview(iconView)
        addSubview(titleView)
        addSubview(moreIconView)
    }
    
    /// 左侧图标
    lazy var iconView: UIImageView = {
        let result = UIImageView()
        result.image = UIImage(systemName: "gear")
        return result
    }()
    
    lazy var titleView: UILabel = {
        let result = UILabel()
        result.text = "收藏"
        return result
    }()
    
    lazy var moreIconView: UIImageView = {
       let result = UIImageView()
        result.image = UIImage(systemName: "chevron.right")
        return result
    }()
}
