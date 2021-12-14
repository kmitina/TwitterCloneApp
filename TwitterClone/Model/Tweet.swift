//
//  Tweet.swift
//  TwitterClone
//
//  Created by DVKSH on 13.12.21.
//

import Foundation

class Tweet {
    let caption: String
    let tweetID: String
    let uid: String
    let likes: Int
    var timestamp: Date?
    let retweetCount: Int
    
    init(tweetID: String, dictionary: [String: Any]) {
        self.tweetID = tweetID
        
        self.caption = dictionary["caption"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
        self.likes = dictionary["likes"] as? Int ?? 0
        self.retweetCount = dictionary["retweets"] as? Int ?? 0

        if let timestamp = dictionary["timestamp"] as? Double {
            self.timestamp = Date(timeIntervalSince1970: timestamp)
        }
    }
    
    func printTweet() {
        print("DEBUG: TWEET FROM CLASS is \(caption)")
        print("DEBUG: TWEET FROM CLASS is \(tweetID)")
        print("DEBUG: TWEET FROM CLASS is \(uid)")
        print("DEBUG: TWEET FROM CLASS is \(likes)")
        print("DEBUG: TWEET FROM CLASS is \(timestamp)")
        print("DEBUG: TWEET FROM CLASS is \(retweetCount)")
    }
}

