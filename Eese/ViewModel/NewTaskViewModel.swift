//
//  NewTaskViewModel.swift
//  Eese
//
//  Created by Kwasi Nsiah on 6/25/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class NewTaskViewModel: ObservableObject {
    @Published var title = ""
    
    init() {}
    
    func save() {
        // check if task can be saved/ not empty
        
        // create model
        let newId = UUID().uuidString
        let newItem = TodoTask(id: newId, title: title, status: "Todo")
        
        // save model
        let db = Firestore.firestore()
        
        db.collection("tasks")
            .document(newId)
            .setData(newItem.asDictionary())
        
    }
    
}
