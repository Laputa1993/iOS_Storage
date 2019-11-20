//
//  DSRefreshHeader.swift
//  iOS_Storage
//
//  Created by caiqiang on 2019/11/20.
//  Copyright © 2019 蔡强. All rights reserved.
//

import UIKit

class DSRefreshHeader: MJRefreshHeader {
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "fly1")
        var animationImages: [UIImage] = []
        for i in 1...18 {
            let image = UIImage(named: "fly\(i)")
            animationImages.append(image!)
        }
        imageView.animationImages = animationImages
        imageView.animationDuration = 1
        return imageView
    }()

    override func prepare() {
        super.prepare()
        
        self.mj_h = 60
        
        self.addSubview(imageView)
        imageView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.height.equalTo(40)
            // 宽高比 179 : 132
            make.height.equalTo(imageView.snp.width).multipliedBy(132.0/179)
        }
        
    }
    
    override var state: MJRefreshState {
        didSet {
            super.state = state
            
            switch state {
            case .idle: // 普通闲置状态
                self.imageView.image = UIImage(named: "fly1")
                self.imageView.stopAnimating()
//            case .pulling: // 松开就可以进行刷新的状态
//                self.imageView.startAnimating()
            case .refreshing: // 正在刷新中的状态
                self.imageView.startAnimating()
            default:
                break
            }
        }
    }
    
    override var pullingPercent: CGFloat {
        
        didSet {
            super.pullingPercent = pullingPercent
            
            let num1 = pullingPercent * 18
            let num2: Int = Int(num1.truncatingRemainder(dividingBy: 18))
            let num3 = num2 + 1
            
            let imageName: String = "fly\(num3)"
            self.imageView.image = UIImage(named: imageName)
            
        }
        
    }

}
