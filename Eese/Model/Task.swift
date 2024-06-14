//
//  Task.swift
//  Eese
//
//  Created by Kwasi Nsiah on 6/13/24.
//

import Foundation

struct Task: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var status: String
}

#if DEBUG
let testDataTasks = [
    Task(title: "Grab data from firebase", status: "Todo"),
    Task(title: "task 2", status: "Todo")
]
#endif
