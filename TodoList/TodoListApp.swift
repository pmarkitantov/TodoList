//
//  TodoListApp.swift
//  TodoList
//
//  Created by Pavel Markitantov on 02/04/2024.
//

import SwiftUI



@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
