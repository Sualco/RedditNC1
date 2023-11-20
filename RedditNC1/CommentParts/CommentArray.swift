//
//  CommentArray.swift
//  RedditNC1
//
//  Created by Claudio Borrelli on 17/11/23.
//

import Foundation

class arrayComment1 {
    var comments1 = [
        CommentsStructure1(userComment: "u/mrcode", comment: """
    Hi there! To create a "Sign In" button in Swift UI, you can use the following code snippet:

    ```swift
    Button(action: {
        // Handle sign-in logic here
    }) {
        Text("Sign In")
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
    ```

    For the "Register" button, you can follow a similar approach, adjusting the action and button label accordingly. Let me know if you need more details!
    """, commentLogo: "logor5", commentUpvote: 20, commentDownvote: 0, commentHasUpvote: false),
        CommentsStructure1(userComment: "u/bob", comment: """
    Sure thing! Here's an example of a "Register" button in Swift UI:

    ```swift
    Button(action: {
        // Handle registration logic here
    }) {
        Text("Register")
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
    ```

    Feel free to customize the button's appearance and add any registration-related logic inside the action closure. Hope this helps!
    """
                           ,commentLogo: "logor3" ,commentUpvote: 15, commentDownvote: 0, commentHasUpvote: false)
    
    ]
    func updateCommentUpvote(for comment: CommentsStructure1) {
        if let index = comments1.firstIndex(of: comment), !comments1[index].commentHasUpvote {
            comments1[index].commentUpvote += 1
                comments1[index].commentHasUpvote = true
            }
        }
    func updateCommentDownvote(for comment: CommentsStructure1) {
        if let index = comments1.firstIndex(of: comment), !comments1[index].commentHasUpvote {
                comments1[index].commentDownvote -= 1
                comments1[index].commentHasUpvote = true
            }
        }
}

class arrayComment2 {
    var comments2 = [
        CommentsStructure1(userComment: "", comment: "", commentLogo: "logor4", commentUpvote: 20, commentDownvote: 0, commentHasUpvote: false),]
}

class arrayComment3 {
    var comments3 = [
        CommentsStructure1(userComment: "", comment: "", commentLogo: "logor10", commentUpvote: 20, commentDownvote: 0, commentHasUpvote: false)]
}

class arrayComment4{
    var comments4 = [
        CommentsStructure1(userComment: "", comment: "", commentLogo: "logor8", commentUpvote: 20, commentDownvote: 0, commentHasUpvote: false)]
}

class arrayComment5 {
    var comments5 = [
        CommentsStructure1(userComment: "", comment: "", commentLogo: "logo7", commentUpvote: 20, commentDownvote: 0, commentHasUpvote: false)]
}

class arrayComment6 {
    var comments6 = [
        CommentsStructure1(userComment: "", comment: "", commentLogo: "logo9", commentUpvote: 20, commentDownvote: 0, commentHasUpvote: false)]
}

class arrayComment7 {
    var comments7 = [
        CommentsStructure1(userComment: "", comment: "", commentLogo: "logor1", commentUpvote: 20, commentDownvote: 0, commentHasUpvote: false)]
}

class arrayComment8 {
    var comments8 = [
        CommentsStructure1(userComment: "", comment: "", commentLogo: "logor6", commentUpvote: 20, commentDownvote: 0, commentHasUpvote: false)]
}

class arrayComment9 {
    var comments9 = [
        CommentsStructure1(userComment: "", comment: "", commentLogo: "logor6", commentUpvote: 20, commentDownvote: 0, commentHasUpvote: false)]
}

class arrayComment10 {
    var comments10 = [
        CommentsStructure1(userComment: "", comment: "", commentLogo: "logor1", commentUpvote: 20, commentDownvote: 0, commentHasUpvote: false)]
}
