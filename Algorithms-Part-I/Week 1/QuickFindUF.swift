//
//  QuickFindUF.swift
//  DataTypes
//
//  Created by Khislatjon Valijonov on 11/03/22.
//

import Foundation

class QuickFindUF {
    private var id: [Int]
    
    init(n: Int) {
        id = Array(repeating: 0, count: n)
        for i in 0..<n {
            id[i] = i
        }
    }
    
    func connected(p: Int, q: Int) -> Bool {
        return id[p] == id[q]
    }
    
    func union(p: Int, q: Int) {
        let pid = id[p]
        let qid = id[q]
        for i in 0..<id.count {
            if id[i] == pid {
                id[i] = qid
            }
        }
    }
    
    func printId() {
        print(id)
    }
}
