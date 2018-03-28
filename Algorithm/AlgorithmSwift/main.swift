//
//  main.swift
//  Algorithms
//
//  Created by cottonBuddha on 2017/6/3.
//  Copyright © 2017年 cottonBuddha. All rights reserved.
//

import Foundation

func singleNumber(nums: [Int]) -> Int {
    var sum:Int = 0
    for num in nums {
        sum = sum ^ num
    }
    return sum
}

//print(fibo1(n: 1))
//print(fibo1(n: 2))
//print(fibo1(n: 3))
//print(fibo1(n: 4))
//print(fibo1(n: 5))
//print(fibo1(n: 6))
//print(fibo1(n: 7))
//
//print(num)

//let inputArr = [10,6,48,9,1,11,98]
//print(shellSort(inputArr: inputArr))

//print(yanghui(hang: 6))

print(singleNumber(nums: [0,4,9,7,5,7,9,4,5]))


func swap(a: Int , b: Int) -> (Int,Int){
    //    a = a^b
    //    b = a^b
    //    a = a^b
    return (a,b)
}






