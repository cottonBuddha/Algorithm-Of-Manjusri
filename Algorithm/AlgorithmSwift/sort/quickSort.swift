//
//  quickSort.swift
//  Algorithms
//
//  Created by cottonBuddha on 2017/10/15.
//  Copyright © 2017年 cottonBuddha. All rights reserved.
//

import Foundation
////快速排序

func quickSort(inputArr: [Int]) -> [Int] {
    var array = inputArr
    print(array)
    func sort(low: Int, high: Int) {
        let pivot = array[low]
        var i: Int = low + 1
        var j: Int = high
        if i >= j {
            return
        }
        while i != j {
            while array[j] >= pivot && i < j {
                j -= 1
            }
            
            while array[i] <= pivot && i < j {
                i += 1
            }
            
            if i < j {
                array.swapAt(i, j)
                print(array)
            }
        }
        array.swapAt(low, i)
        print(array)

        sort(low: low, high: i - 1)
        sort(low: i + 1, high: high)
    }
    
    sort(low: 0, high: array.count - 1)
    
    return array
}

