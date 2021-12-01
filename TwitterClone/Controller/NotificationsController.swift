//
//  NotificationController.swift
//  TwitterClone
//
//  Created by DVKSH on 30.11.21.
//

import UIKit

class NotificationsController: UIViewController {
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cofigureUI()
    }
    
    // MARK: - Helpers
    func cofigureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Notifications"
    }

    
}
