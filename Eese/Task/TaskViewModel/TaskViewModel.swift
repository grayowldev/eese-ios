//
//  TaskViewModel.swift
//  Eese
//
//  Created by Kwasi Nsiah on 6/24/24.
//

import Foundation
import FirebaseFirestore


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
        print("Deleting task with id: " + id)
        
        let db = Firestore.firestore()
        
        db.collection("tasks")
            .document(id)
            .delete()
    }
    
    func toggleStatus(task: TodoTask) {
        print("checkmark clicked")
    }
}
