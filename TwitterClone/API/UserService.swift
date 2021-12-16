//
//  UserService.swift
//  TwitterClone
//
//  Created by DVKSH on 9.12.21.
//

import Firebase



struct UserService {
    static let shared = UserService()
    
    func fetchUser(uid: String, completion: @escaping(User) -> Void) {
        
        REF_USERS.child(uid).observeSingleEvent(of: .value) { snapshot in
            guard let dictionary = snapshot.value as? [String: AnyObject] else { return }
         
            let user = User(uid: uid, dictionary: dictionary)
            
            completion(user)

        }
    }
}
