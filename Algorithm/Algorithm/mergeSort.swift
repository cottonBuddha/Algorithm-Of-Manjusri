//
//  mergeSort.swift
//  Algorithms
//
//  Created by cottonBuddha on 2017/10/21.
//  Copyright © 2017年 cottonBuddha. All rights reserved.
//

import Foundation

func merge(list0: [Int], list1: [Int]) -> [Int]{
    var i: Int = 0
    var j: Int = 0
    var newList: [Int] = []
    while i < list0.count && j < list1.count {
        if (list0[i] < list1[j]) {
            newList.append(list0[i])
            i = i + 1
        } else {
            newList.append(list1[j])
            j = j + 1
        }
    }
    
    while i < list0.count {
        newList.append(list0[i])
        i = i + 1
    }
    
    while j < list1.count {
        newList.append(list1[j])
        j = j + 1
    }
    
    return newList
}

func mergeSort(inputArr: [Int]) -> [Int] {
    if inputArr.count == 1 {
        return inputArr
    }
    
    var tempArr: [[Int]] = [];
    inputArr.forEach {
        tempArr.append([$0])
    }
    
    while tempArr.count != 1 {
        var i = 0
        while i < tempArr.count - 1 {
            tempArr[i] = merge(list0: tempArr[i], list1: tempArr[i + 1])
            tempArr.remove(at: i + 1)
            i = i + 1
        }
    }
    
    return tempArr.last!
}
