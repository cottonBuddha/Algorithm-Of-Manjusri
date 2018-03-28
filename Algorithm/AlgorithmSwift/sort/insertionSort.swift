//
//  insertionSort.swift
//  Algorithms
//
//  Created by cottonBuddha on 2017/10/21.
//  Copyright © 2017年 cottonBuddha. All rights reserved.
//

import Foundation

func insertionSort(inputArr: [Int]) -> [Int] {
    var sortedArray: [Int] = [inputArr[0]]
    var i: Int = 1
    func insert(index: Int) {
        sortedArray.append(inputArr[index])
        var j: Int = 0
        while j < sortedArray.count - 1 {
            if sortedArray[j] > sortedArray[sortedArray.count - 1] {
                sortedArray.swapAt(j, sortedArray.count - 1)
            }
            j += 1
        }
    }
    
    while i < inputArr.count - 1 {
        insert(index: i)
        i += 1
        print(sortedArray)
    }
    return sortedArray
}
