//
//  fibo.swift
//  Algorithms
//
//  Created by cottonBuddha on 2017/10/15.
//  Copyright © 2017年 cottonBuddha. All rights reserved.
//

import Foundation

//MARK:斐波那契数列
//递归O(2^n)
var num = 0
func fibo(n: Int) -> Int {
    assert(n > 0, "n>0")
    num = num + 1
    return n < 3 ? 1 : fibo(n: n-1) + fibo(n: n-2)
}
//O(n)
func fibo1(n: Int) -> Int {
    assert(n > 0, "n>0")
    var fas = (0, 1)
    if n > 1 {
        (2...n).forEach {_ in
            swap(&fas.0, &fas.1)
            fas.1 = fas.0 + fas.1
            num = num + 1
        }
    }
    return fas.1
}
