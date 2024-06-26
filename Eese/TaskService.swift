//
//  File.swift
//  Eese
//
//  Created by Kwasi Nsiah on 6/24/24.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

struct TaskService {
    static func fetchTask()  async throws -> [TodoTask] {
        let snapshot = try await Firestore
            .firestore()
            .collection("tasks")
            .getDocuments()
        
        return snapshot.documents.compactMap({ try? $0.data(as: TodoTask.self)})
    }
}
