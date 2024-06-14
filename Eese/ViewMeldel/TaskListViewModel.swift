//
//  TaskListViewModel.swift
//  Eese
//
//  Created by Kwasi Nsiah on 6/13/24.
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject {
    @Published var taskCellViewModel = [TaskCellViewModel]()
    
    private var cancelables = Set<AnyCancellable>()
    
    init(taskCellViewModel: [TaskCellViewModel] = [TaskCellViewModel](), cancelables: Set<AnyCancellable> = Set<AnyCancellable>()) {
//        self.taskCellViewModel = taskCellViewModel
        self.taskCellViewModel = testDataTasks.map { task in
            TaskCellViewModel(task: task)
        }
        self.cancelables = cancelables
    }
}
