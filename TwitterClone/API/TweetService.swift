//
//  TweetService.swift
//  TwitterClone
//
//  Created by DVKSH on 13.12.21.
//

import Firebase

struct TweetService {
    static let shared = TweetService()
    
    func uploadTweet(caption: String, completion: @escaping(Error?, DatabaseReference) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let values = ["uid": uid,
//                      "timestamp": Int(NSDate().timeIntervalSince1970),
                      "likes": 0,
                      "retweets": 0,
                      "caption": caption] as [String : Any]
        
        REF_TWEETS.childByAutoId().updateChildValues(values, withCompletionBlock: completion)
    }
    
    func fetchTweets(completion: @escaping([Tweet]) -> Void) {
        var tweets = [Tweet]()
        
        REF_TWEETS.observe(.childAdded) { snapshot in
            guard let dictionary = snapshot.value as? [String: Any] else { return }
            let tweetID = snapshot.key
            let tweet = Tweet(tweetID: tweetID, dictionary: dictionary)
            tweet.printTweet()
            print("DEBUG: tweetID IS \(tweetID)")
            print("DEBUG: tweet IS \(tweet)")
            print("DEBUG: DICTIONARY IS \(dictionary)")
            print("DEBUG: TIMESTAMP IS \(String(describing: tweet.timestamp))")
            tweets.append(tweet)
            completion(tweets)
        }
    }
    
}
