//
//  yanghui.swift
//  Algorithms
//
//  Created by cottonBuddha on 2017/10/22.
//  Copyright © 2017年 cottonBuddha. All rights reserved.
//

import Foundation

func yanghui(hang: Int) -> [[Int]] {
    var arr: [[Int]] = [[1]]
    
    func getItem(hang: Int, lie: Int) -> Int {
        if lie < 0 || lie > hang || hang < 0{
            return 0
        } else {
            return arr[hang][lie]
        }
    }
    
    var i: Int = 1
    while i < hang {
        var tempArr: [Int] = []
        var j: Int = 0
        while j <= i {
            tempArr.append(getItem(hang: i - 1, lie: j - 1) + getItem(hang: i - 1, lie: j))
            j += 1
        }
        arr.append(tempArr)
        i += 1
    }
    return arr
}
