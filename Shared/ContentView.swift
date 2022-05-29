//
//  ContentView.swift
//  Shared
//
//  Created by 能勢航羽 on 2022/05/03.
//

import SwiftUI

struct ContentView: View {
    @State var models:[ToDoItem]=[]
    @State var newItemTitle = ""
    
    var body: some View {
                NavigationView{
            List{
                Section(header:Text("タスク作成")){
                    HStack{
                        TextField("タスク名", text: self.$newItemTitle)
                        Button(action:{
                            let newItem = ToDoItem(title: self.newItemTitle,createdAt: Date())
                            self.models.append(newItem)
                            self.newItemTitle=""
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        }
                    }
                }
                Section(header:Text("タスク一覧")){
                    ForEach(self.models){ todoItem in
                        TaskView(title:todoItem.title,dateString:todoItem.dateString)
                    }
                }
            }.navigationBarTitle(Text("ToDoList"))
        }
    }
}
