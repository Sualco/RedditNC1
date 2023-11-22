//
//  CommentsStructure.swift
//  RedditNC1
//
//  Created by Claudio Borrelli on 17/11/23.
//

import Foundation

struct CommentsStructure1: Identifiable, Equatable {
    var id: UUID = UUID()
    var userComment: String
    var comment: String
    var commentLogo: String
    var commentUpvote: Int
    var commentDownvote: Int
    var commentHasUpvote: Bool
    var commentHasDownvote: Bool
}
