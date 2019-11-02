//
//  LoadingViewController.swift
//  iOS_Storage
//
//  Created by caiqiang on 2019/11/1.
//  Copyright © 2019 蔡强. All rights reserved.
//

import UIKit

class LoadingViewController: CQBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let showItem = UIBarButtonItem(title: "show", style: .plain, target: self, action: #selector(showLoading))
        let dismissItem = UIBarButtonItem(title: "dismiss", style: .plain, target: self, action: #selector(dismissLoading))
        
        navigationItem.rightBarButtonItems = [dismissItem, showItem]
        
    }
    
    @objc private func showLoading() {
        
    }
    
    @objc private func dismissLoading() {
        
    }

}
