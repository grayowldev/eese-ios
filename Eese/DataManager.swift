//
//  DataManager.swift
//  Eese
//
//  Created by Kwasi Nsiah on 6/23/24.
//

import SwiftUI
import Firebase

class DataManager: ObservableObject {
    @Published var tasks: [TodoTask] = []
    
    init() {
        getTasks()
    }
    
    func getTasks() {
        tasks.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("tasks")
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot =  snapshot {
                var tempId = 0
                for document in snapshot.documents {
                    let data = document.data()
                    let id = data["id"] as? String ?? String(tempId)
                    let title = data["title"] as? String ?? ""
                    let status = data["status"] as? String ?? ""
                    
                    let task = TodoTask(id: id, title: title, status: status)
                    self.tasks.append(task)
                    tempId += 1
                }
            }
            
        }
    }
}

//#Preview {
//    DataManager()
//}
