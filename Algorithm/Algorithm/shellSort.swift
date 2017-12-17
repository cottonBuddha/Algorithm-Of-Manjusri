//
//  shellSort.swift
//  Algorithms
//
//  Created by cottonBuddha on 2017/10/21.
//  Copyright © 2017年 cottonBuddha. All rights reserved.
//

import Foundation

func shellSort(inputArr: [Int]) -> [Int] {
    var array = inputArr
    print(array)

    func sort(step: Int) {
        var i: Int = 0
        while i + step < array.count - 1 {
            if array[i] > array[i + step] {
                swap(&array[i], &array[i + step])
                print(array)
            }
            i += 1
        }
//        print(array)
    }
    
    var step: Int = array.count/2
    while step > 0 {
        sort(step: step)
        step -= 1
    }
    
    return array
}
