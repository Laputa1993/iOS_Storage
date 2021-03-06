//
//  String+Extension.swift
//  iOS_Storage
//
//  Created by caiqiang on 2019/11/5.
//  Copyright © 2019 蔡强. All rights reserved.
//

import Foundation

extension String {
    
    /// 移除两端空格
    func removeBothEndsWhiteSpace() -> String {
        return self.trimmingCharacters(in: .whitespaces)
    }
    
    /// 截取规定下标之后的字符串
    func subStringFrom(index: Int)-> String {
        let temporaryString: String = self
        let temporaryIndex = temporaryString.index(temporaryString.startIndex, offsetBy: 3)
        return String(temporaryString[temporaryIndex...])
    }
    
    /// 截取规定下标之前的字符串
    func subStringTo(index: Int) -> String {
        let temporaryString = self
        let temporaryIndex = temporaryString.index(temporaryString.startIndex, offsetBy: index - 1)
        return String(temporaryString[...temporaryIndex])
    }
    
}
