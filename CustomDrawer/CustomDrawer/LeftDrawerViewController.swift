//
//  LeftDrawerViewController.swift
//  CustomDrawer
//
//  Created by Julio Collado on 6/29/19.
//  Copyright © 2019 Julio Collado. All rights reserved.
//

import UIKit

class LeftDrawerViewController: UIViewController {

    @IBOutlet var configurationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func closeLeftSideMenu(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name.init(Constants.Notifications.TAPPED_ON_SIDE_MENU), object: nil)
    }

}
