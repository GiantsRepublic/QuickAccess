//
//  CustomColor.swift
//  QuickAccess
//
//  Created by Jason Wei on 8/7/19.
//  Copyright © 2019 GiantsRepublic. All rights reserved.
//

import Foundation


struct CustomColor {
    var name: String
    var hex: String
    var rgb = [Int]()
    var index: Int
    
    init(name: String, hex: String) {
        self.name = name
        self.hex = hex
        self.rgb = [0]
        self.index = 0
    }
    
    init(name: String, rgb: [Int]) {
        self.name = name
        self.rgb = rgb
        self.hex = ""
        self.index = 0
    }
}

class AppData {
    static let data = [CustomColor]()
}
