//
//  TweetHeader.swift
//  TwitterClone
//
//  Created by DVKSH on 29.12.21.
//

import UIKit

class TweetHeader: UICollectionReusableView {
    // MARK: - Properties
    

    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemPurple
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
