//
//  ItemModel.swift
//  TodoList
//
//  Created by Pavel Markitantov on 02/04/2024.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
