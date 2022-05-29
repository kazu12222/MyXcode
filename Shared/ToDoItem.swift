//
//  ToDoItem.swift
//  SampleToDoApp+SwiftUI
//
//  Created by 能勢航羽 on 2022/05/03.
//

import Foundation

struct ToDoItem:Identifiable{
    var id:String
    var title:String
    var createdAt:Date
    
    var dateString:String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        return dateFormatter.string(from: createdAt)
    }
}

