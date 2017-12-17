//
//  bubbleSort.swift
//  Algorithms
//
//  Created by cottonBuddha on 2017/10/15.
//  Copyright © 2017年 cottonBuddha. All rights reserved.
//

import Foundation
//冒泡排序，O(n^2)
func bubbleSort(inputArr: [Int]) -> [Int]{
    var array = inputArr;
    var swapped = false
    repeat {
        swapped = false
        for j in 0 ..< array.count - 1 {
            if array[j] > array[j+1] {
                swap(&array[j+1], &array[j])
                swapped = true
            }
        }
    } while (swapped)
    
    return array
}
