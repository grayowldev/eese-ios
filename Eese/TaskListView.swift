//
//  ContentView.swift
//  Eese
//
//  Created by Kwasi Nsiah on 6/13/24.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var taskListVM = TaskListViewModel()
    let task  = testDataTasks
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Eese")
                List(taskListVM.taskCellViewModel) { taskCellVM in
                    HStack {
                        Image(systemName: "circle")
                        Text(taskCellVM.task.title)
                    }
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Add a new task")
                })
            }
        }
        .navigationTitle("Task")
    }
}

#Preview {
    TaskListView()
}
