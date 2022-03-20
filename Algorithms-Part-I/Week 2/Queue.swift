//
//  Queue.swift
//  DataTypes
//
//  Created by Khislatjon Valijonov on 16/03/22.
//

import Foundation

struct Queue<T> {
    // Stack with array implementation. You can do that with Linked List as well
    private var array = [T]()
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    mutating func enqueue(element: T) {
        array.append(element)
    }
    
    mutating func dequeue() -> T? {
        if array.isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    func size() -> Int {
        return array.count
    }
}
