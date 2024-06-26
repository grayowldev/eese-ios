//
//  NewTask.swift
//  Eese
//
//  Created by Kwasi Nsiah on 6/25/24.
//

import SwiftUI

struct NewTaskView: View {
    
    @StateObject var viewModel = NewTaskViewModel()
    
    var body: some View {
        VStack {
            
            Text("Add a new task")
                .padding()
            
            Form {
                // Title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                // Button
                Button {
                    viewModel.save()
                } label: {
                    Text("Save")
                }
            }
        }
    }
}

#Preview {
    NewTaskView()
}
