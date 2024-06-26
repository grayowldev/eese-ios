//
//  TaskViewModel.swift
//  Eese
//
//  Created by Kwasi Nsiah on 6/24/24.
//

import Foundation

class TaskViewModel: ObservableObject {
//    @Published var tasks = [TodoTask]()
    @Published var showNewItemView = false
    
    init(){ 
        Task { try await fetchTasks() }
    }
    
    func fetchTasks() async throws {
//        self.tasks = try await TaskService.fetchTask()
    }
    
    func deleteTask(id: String) {
        print("Deleted task with id: " + id)
    }
    
    func toggleStatus(task: TodoTask) {
        print("checkmark clicked")
    }
}
