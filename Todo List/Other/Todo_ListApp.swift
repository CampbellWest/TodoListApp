//
//  Todo_ListApp.swift
//  Todo List
//
//  Created by Campbell West on 2024-05-01.
//

import FirebaseCore
import SwiftUI

@main
struct Todo_ListApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

// launch screen is new folder search for launch screen and change in general settings in app and launch screen
