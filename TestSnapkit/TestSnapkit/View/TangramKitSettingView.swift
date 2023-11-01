//
//  TangramKitSettingView.swift
//  设置item
//
//  Created by yw.hao on 2023/10/22.
//

import UIKit
import TangramKit

class TangramKitSettingView: TGRelativeLayout {
    init() {
        super.init(frame: CGRect.zero)
        innerInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        innerInit()
    }
    
    func innerInit() {
        tg_width.equal(.fill)
        tg_height.equal(55)
        
        backgroundColor = .white
        addSubview(iconView)
        addSubview(titleView)
        addSubview(moreIconView)
    }
    
    /// 左侧图标
    lazy var iconView: UIImageView = {
        let result = UIImageView()
        result.image = UIImage(systemName: "gear")
        result.tg_width.equal(20)
        result.tg_height.equal(20)
        result.tg_centerY.equal(0)
        result.tg_leading.equal(16)
        return result
    }()
    
    lazy var titleView: UILabel = {
        let result = UILabel()
        result.text = "收藏"
        result.tg_width.equal(.wrap)
        result.tg_height.equal(.wrap)
        result.tg_centerY.equal(0)
        result.tg_leading.equal(iconView.tg_trailing).offset(16)
        return result
    }()
    
    lazy var moreIconView: UIImageView = {
       let result = UIImageView()
        result.image = UIImage(systemName: "chevron.right")
        result.tg_width.equal(20)
        result.tg_height.equal(20)
        result.tg_centerY.equal(0)
        result.tg_trailing.equal(16)
        return result
    }()
}
