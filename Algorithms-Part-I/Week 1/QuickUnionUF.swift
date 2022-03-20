//
//  QuickUnionUF.swift
//  DataTypes
//
//  Created by Khislatjon Valijonov on 11/03/22.
//

import Foundation

class QuickUnionUF {
    private var id: [Int]
    
    init(n: Int) {
        self.id = Array(repeating: 0, count: n)
        for i in 0..<id.count {
            id[i] = i
        }
    }
    
    private func root(i: Int) -> Int {
        var j = i
        while j != id[j] {
            j = id[j]
        }
        return j
    }
    
    func connected(p: Int, q: Int) -> Bool {
        return root(i: p) == root(i: q)
    }
    
    func union(p: Int, q: Int) {
        let proot = root(i: p)
        let qroot = root(i: q)
        id[proot] = qroot
    }
    
    func printId() {
        print(id)
    }
}
