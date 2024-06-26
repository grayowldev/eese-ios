//
//  EeseApp.swift
//  Eese
//
//  Created by Kwasi Nsiah on 6/13/24.
//

import SwiftUI
import FirebaseCore

@main
struct EeseApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            TaskListView()
        }
    }
}
