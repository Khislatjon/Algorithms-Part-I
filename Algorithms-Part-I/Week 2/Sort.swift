//
//  SelectionSort.swift
//  DataTypes
//
//  Created by Khislatjon Valijonov on 19/03/22.
//

import Foundation

class Sort {
    var a = [7, 10, 5, 3, 8, 4, 2, 9, 6]
    
    private func swap(_ i: Int, _ j: Int) {
        let sw = a[i]
        a[i] = a[j]
        a[j] = sw
    }
    
    func selectionSort() {
        for i in 0..<a.count {
            var min = i
            for j in i+1..<a.count {
                if a[j] < a[min] {
                    min = j
                }
            }
            swap(i, min)
        }
    }
    
    func insertionSort() {
        for i in 0..<a.count {
            for j in stride(from: i, to: 0, by: -1) {
                if a[j] < a[j-1] {
                    swap(j, j-1)
                } else { break }
            }
        }
    }
    
    func shellSort() {
        var sublistCount = a.count / 2
        while sublistCount > 0 {
            for pos in 0..<sublistCount {
                for i in stride(from: (pos + sublistCount), to: a.count, by: sublistCount) {
                    let currentValue = a[i]
                    var pos = i
                    while pos >= sublistCount && a[pos - sublistCount] > currentValue {
                        a[pos] = a[pos - sublistCount]
                        pos -= sublistCount
                    }
                    a[pos] = currentValue
                }
            }
            sublistCount = sublistCount / 2
        }
    }
    
    func shuffle() {
        for i in 0..<a.count {
            let r = Int.random(in: 0...i)
            swap(i, r)
        }
    }
}
