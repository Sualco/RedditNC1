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
        CommentsStructure1(userComment: "User123", comment: "I've been using Swift Data for a while now, and it's been fantastic for handling and manipulating data in my iOS projects. The syntax is clean, and the performance is impressive. Highly recommended!", commentLogo: "logor4", commentUpvote: 20, commentDownvote: 0, commentHasUpvote: false),
    CommentsStructure1(userComment: "DevExplorer42", comment: "Swift Data has made working with data in Swift so much more convenient for me. The Codable protocols make serialization and deserialization a breeze. It's definitely a powerful feature of the language!"
, commentLogo: "logor3", commentUpvote: 12, commentDownvote: 0, commentHasUpvote: false),
    CommentsStructure1(userComment: "CodeEnthusiast007", comment: "I initially found Swift Data a bit challenging to grasp, but once I got the hang of it, I appreciated its safety features and the ease of working with types. It adds a layer of confidence to my code.", commentLogo: "logor1", commentUpvote: 37, commentDownvote: 0, commentHasUpvote: false),
    CommentsStructure1(userComment: "iOSdevRookie", comment: "Just started learning Swift, and I'm already impressed with how Swift Data simplifies tasks like JSON decoding. It seems like a solid choice for handling data in iOS development. Any tips for a newbie?", commentLogo: "logor10", commentUpvote: 74, commentDownvote: 0, commentHasUpvote: false),
    CommentsStructure1(userComment: "TechWizard99", comment: "I've worked with several programming languages, and I must say, Swift Data is one of the reasons I enjoy iOS development. The combination of type safety and performance makes it stand out. What's your favorite feature?", commentLogo: "logor9", commentUpvote: 24, commentDownvote: 0, commentHasUpvote: false)]
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
