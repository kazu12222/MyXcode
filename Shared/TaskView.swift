//
//  TaskView.swift
//  SampleToDoApp+SwiftUI
//
//  Created by 能勢航羽 on 2022/05/03.
//

import SwiftUI

struct TaskView: View {
    var title:String
    var dateString:String
    var body:some View {
        VStack(alignment:.leading){
            Text(title)
                .font(.body)
                .bold()
            Text(dateString)
                .font(.caption)
                .foregroundColor(.gray)
            
        }
    }
}

struct TaskView_Previews:PreviewProvider{
    static var previews:some View{
        TaskView(title:"タスク名",dateString:"タスク所要時間")
    }
}
