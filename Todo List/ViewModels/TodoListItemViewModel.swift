//
//  TodoListItemViewModel.swift
//  Todo List
//
//  Created by Campbell West on 2024-05-01.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

//View model for list's items singular

class TodoListItemViewModel: ObservableObject {
    init() {}
    
    func flipCheckmark(item: TodoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
