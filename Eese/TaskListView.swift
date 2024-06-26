//
//  ContentView.swift
//  Eese
//
//  Created by Kwasi Nsiah on 6/13/24.
//

import SwiftUI
import FirebaseFirestoreSwift

struct TaskListView: View {
    @StateObject var viewModel: TaskViewModel
    @FirestoreQuery var tasks: [TodoTask]
    
    init() {
        self._tasks = FirestoreQuery(
            collectionPath: "tasks"
        )
        self._viewModel = StateObject(
            wrappedValue: TaskViewModel()
        )
    }
    
    var body: some View {
        
        NavigationView {
            VStack {
                List(tasks) { task in
//                    ForEach(viewModel.tasks){ task in
                    TaskCellView(task: task)
                        .swipeActions {
                            Button {
                                viewModel.deleteTask(id: task.id)
                            } label: {
                                Text("Delete")
                            }
                            .tint(.red)
                        }
//                    }
                }
                .listStyle(PlainListStyle())
            }
            .padding(.top, 20)
            .navigationTitle("Tasks")
            .toolbar {
                Button {
                    viewModel.showNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showNewItemView, content: {
                NewTaskView()
            })
        }
        
//        NavigationStack {
//            ScrollView {
//                LazyVStack {
//                    ForEach(viewModel.tasks){ task in
//                        TaskCellView(task: task)
//                    }
//                }
//            }
//            .padding(.top, 20)
//            .navigationTitle("Tasks")
//            .toolbar {
//                Button {
//                    viewModel.showNewItemView = true
//                } label: {
//                    Image(systemName: "plus")
//                }
//            }
//            .sheet(isPresented: $viewModel.showNewItemView, content: {
//                NewTaskView()
//            })
//        }
        
    }
}

#Preview {
    TaskListView()
}
