//
//  Stack.swift
//  DataTypes
//
//  Created by Khislatjon Valijonov on 13/03/22.
//

import Foundation

struct Stack<T> {
    // Stack with array implementation. You can do that with Linked List as well
    private var array = [T]()
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    mutating func push(element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        return array.popLast()
    }
    
    func size() -> Int {
        return array.count
    }
}
