//
//  ListView.swift
//  TodoList
//
//  Created by Pavel Markitantov on 02/04/2024.
//

import SwiftUI

struct ListView: View {
    
    
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first title!", isCompleted: false),
        ItemModel(title: "This is the second!", isCompleted: false),
        ItemModel(title: "Third", isCompleted: true)
    ]

    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .navigationTitle("Todo List")
        .navigationBarItems(leading: EditButton(),
                            trailing: NavigationLink("Add", destination: AddView()))

        .listStyle(.plain)
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
