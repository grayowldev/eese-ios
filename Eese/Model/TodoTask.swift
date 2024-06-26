//
//  Task.swift
//  Eese
//
//  Created by Kwasi Nsiah on 6/13/24.
//

import Foundation

struct TodoTask: Identifiable, Decodable, Encodable {
    var id: String = UUID().uuidString
    var title: String
    var status: String
    
    mutating func setCompleted(_ state: String) {
        status = state
    }

}



#if DEBUG
let testDataTasks = [
    TodoTask(title: "Grab data from firebase", status: "Todo"),
    TodoTask(title: "task 2", status: "Todo")
]
#endif
