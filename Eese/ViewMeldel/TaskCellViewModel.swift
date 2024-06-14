//
//  TaskViewModel.swift
//  Eese
//
//  Created by Kwasi Nsiah on 6/13/24.
//

import Foundation
import Combine

class TaskCellViewModel: ObservableObject, Identifiable {
    @Published var task: Task
    @Published var completionStateIconName = ""
    
    var id: String = ""
    
    private var cancelables = Set<AnyCancellable>()
    
    
    init(task: Task, completionState: String = "") {
        self.task = task
        $task
            .map { task in
                (task.status == "Completed") ? "checkmark.circle.fill" : "circle"
            }
            .assign(to: \.completionStateIconName, on: self)
            .store(in: &cancelables)
        
        $task
            .map{ task in
                task.id
            }
            .assign(to: \.id, on: self)
            .store(in: &cancelables)
    }
}
