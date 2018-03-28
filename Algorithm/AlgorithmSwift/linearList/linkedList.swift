//
//  linkedList.swift
//  Algorithm
//
//  Created by cottonBuddha on 2017/12/18.
//  Copyright © 2017年 cottonBuddha. All rights reserved.
//

//链表
//动态增容

import Foundation

//结构体无法拥有本身类型属性？

public class Node<T> {
    var data: T
    var nextNode: Node?
    var previousNode: Node?
    
    init(data: T) {
        self.data = data
    }
}

class LinkedList<T> {

    private var head: Node<T>?
    
    //初始化
    func initList() {
        
    }
    
    //判空
    func listEmpty() -> Bool{
        return head == nil
    }
    
    //清空
    func clearList() {
        
    }
    
    //取值
    func getElem(index: Int) -> Node<T>?{
        var i = 0
        var node = head
        while node?.nextNode != nil && i < index{
            node = node?.nextNode
            i = i + 1
        }
        
        if i == index {
            return node
        }
        
        return nil
    }
    
    //查找某个元素
    func locateElem() -> Int{
        
        return 0
    }
    
    //插入
    func listInsert(data: T, index: Int) {
        let newNode = Node.init(data: data)
        if let node = getElem(index: index) {
            let previousNode = node.previousNode
            node.previousNode = newNode
            
            newNode.nextNode = node
            newNode.previousNode = previousNode
            
            previousNode?.nextNode = node
        }
    }
    
    //删除
    func listDelete() {
        
    }
    
    //元素个数
    func listLength() {
        
    }
    
}
