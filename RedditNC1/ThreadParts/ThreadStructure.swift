//
//  File.swift
//  RedditNC1
//
//  Created by Claudio Borrelli on 16/11/23.
//

import Foundation

class ThreadStructure: ObservableObject {
   
   @Published var structure = [
    Tdetails(user: "u/jojo", userlogo: "logor1", title: "How can i make this buttons?", description: "Hi everyone i want to ask something to all of you: \n I want to make this button for my app but i don't know how to, can you help me? \n", image: "image1", upvote: 15, downvote: 0, hasUpvoted: false, hasDownvoted: false),
    Tdetails(user: "u/Swiftlover", userlogo: "logor2",title: "SwiftData", description: "What do you think about SwiftData?", image: nil, upvote: 45, downvote: 0, hasUpvoted: false, hasDownvoted: false),
    Tdetails(user: "u/CodingBeast", userlogo: "logor3",title: "Best Practices for Writing Clean and Maintainable Swift Code", description: "Share your tips and tricks for writing clean and easily maintainable Swift code. What are your favorite best practices?", image: nil, upvote: 18, downvote: 0,hasUpvoted: false, hasDownvoted: false),
    Tdetails(user: "u/FNS26", userlogo: "logor4",title: "What do you think about Vision Pro?", description: "Vision Pro is finally announced, what do you think about this project? it is gonna be the next success from Apple?", image: "image2", upvote: 90, downvote: 0,hasUpvoted: false, hasDownvoted: false),
    Tdetails(user: "u/SwiftDevPro22", userlogo: "logor5",title: "SwiftUI vs UIKit: Which Do You Prefer and Why?", description: "A comparison between SwiftUI and UIKit: advantages, disadvantages, and personal preferences. Share your experience and find out what other developers think!", image: nil, upvote: 70, downvote: 0,hasUpvoted: false, hasDownvoted: false),
    Tdetails(user: "u/DevSwiftie", userlogo: "logor6",title: "New Features in Swift: What to Expect from the Next Release?", description: "Previews and discussions on the new features of Swift. What improvements would you like to see in the next version?", image: nil, upvote: 30, downvote: 0,hasUpvoted: false, hasDownvoted: false),
    Tdetails(user: "u/wow", userlogo: "logor7",title: "New to swiftUI", description: "Hi to everyone, i'm new to swiftUI there is some tutorial to follow for better understanding? Thank you in advance", image: "image3", upvote: 65, downvote: 0,hasUpvoted: false, hasDownvoted: false),
    Tdetails(user: "u/animelover", userlogo: "logor8",title: "Issue with Swift UI: How to Handle Navigation Between Screens?", description: "I'm facing a challenge with navigation in Swift UI. Can anyone guide me on how to navigate between different screens or recommend useful resources?", image: nil, upvote: 21, downvote: 0,hasUpvoted: false, hasDownvoted: false),
    Tdetails(user: "u/samba", userlogo: "logor9",title: "Question on Swift UI: How to Create a Dynamic List of Buttons?", description: "I'm developing an app with Swift UI and need to create a list of buttons that updates dynamically. Does anyone have experiences or tips to share?", image: nil, upvote: 35, downvote: 0,hasUpvoted: false, hasDownvoted: false),
    Tdetails(user: "u/CBor", userlogo: "logor10",title: "Welcome to Thymos!", description: "Hello everyone this is my first app: Thymos! Is a leaner based app about emotion and i'm very happy about this project!", image: "image4", upvote: 23, downvote: 0,hasUpvoted: false, hasDownvoted: false)
        ]
    func updateUpvote(for thread: Tdetails) {
            if let index = structure.firstIndex(of: thread), !structure[index].hasUpvoted {
                structure[index].upvote += 1
                structure[index].hasUpvoted = true
                
            }
        }
    func undoUpvote(for thread: Tdetails) {
            if let index = structure.firstIndex(of: thread), structure[index].hasUpvoted {
                structure[index].upvote -= 1
                structure[index].hasUpvoted = false
                
            }
        }
    
    
    func updateDownvote(for thread: Tdetails) {
            if let index = structure.firstIndex(of: thread), !structure[index].hasDownvoted {
                structure[index].upvote -= 1
                structure[index].hasDownvoted = true
            }
        }
    
    func undoDownvote(for thread: Tdetails) {
            if let index = structure.firstIndex(of: thread), structure[index].hasDownvoted {
                structure[index].upvote += 1
                structure[index].hasDownvoted = false
                
            }
        }

}


