//
//  TaskCellView.swift
//  Eese
//
//  Created by Kwasi Nsiah on 6/24/24.
//

import SwiftUI

struct TaskCellView: View {
    @StateObject var viewModel = TaskViewModel()
    
    var task: TodoTask
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    viewModel.toggleStatus(task: task)
                } label: {
                    Image(systemName: task.status == "Completed" ? "checkmark.circle.fill" : "circle")
                }
                
                Text(task.title)
                Spacer()
            }
//            Divider()
        }
//        .padding(.leading, 30)
        .padding(.bottom, 20)
        
    }
}

#Preview {
    TaskCellView(task: testDataTasks[0])
}
