//
//  ThreadDetail.swift
//  RedditNC1
//
//  Created by Claudio Borrelli on 16/11/23.
//

import Foundation
import SwiftUI


struct Tdetails: Identifiable, Equatable {
    var id: UUID = UUID()
    var user: String
    var userlogo: String
    var title: String
    var description: String
    var image: String?
    var upvote: Int
    var downvote: Int
    var hasUpvoted: Bool
    var hasDownvoted: Bool
}
