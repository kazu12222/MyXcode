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
                        Button(action: addItem) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        }
                    }
                }
                Section(header:Text("タスク一覧")){
                    ForEach(self.models){ todoItem in
                        TaskView(title:todoItem.title,dateString:todoItem.dateString)
                    }.onDelete{indexSet in self.removeItem(indexSet)}
                }
            }.navigationBarTitle(Text("ToDoList"))
        }
    }
    
     private func addItem() {
        let newItem = ToDoItem(id:models.count.description,title: self.newItemTitle,createdAt: Date())
        self.models.append(newItem)
        self.newItemTitle=""
    }
    private func removeItem(_ indexSet: IndexSet){
        let index = indexSet.first!
        self.models.remove(at:index)
    }
}
struct SecondView: View {
    var body: some View {
        Text("SecondView")
    }
}
struct DetailView:View{
    var title:String
    var body: some View{
        Text(title)
            .font(.largeTitle)
            .foregroundColor(.blue)
            .navigationBarTitle(Text("詳細画面"),displayMode: .automatic)
    }
}
struct DetailView_previews:PreviewProvider{
    static var previews: some View{
        DetailView(title:"タイトル")
    }
}
