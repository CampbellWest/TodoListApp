//
//  TodoListViewModel.swift
//  Todo List
//
//  Created by Campbell West on 2024-05-01.
//

import FirebaseFirestore
import Foundation

//View model for list of items 

class TodoListViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId 
    }
    
    /// Delete to do list item
    /// - Parameter id: item id to delete
    func delete(id: String){
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id) // go down this path
            .delete()     // then delete
    }
    
}
