//
//  PostData.swift
//  H4XOR News
//
//  Created by Rishi Singh on 01/08/23.
//

import Foundation

struct Result: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let points: Int
    let url: String?
    let created_at: String
    let author: String
    let objectID: String
}
