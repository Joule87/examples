//
//  ContainerViewController.swift
//  CustomDrawer
//
//  Created by Julio Collado on 6/29/19.
//  Copyright © 2019 Julio Collado. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

    @IBOutlet weak var embeddedViewLeadingConst: NSLayoutConstraint!
    @IBOutlet weak var leftSideMenu: UIView!
    @IBOutlet weak var mainViewController: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name.init(Constants.Notifications.TAPPED_ON_SIDE_MENU), object: nil)
        // Do any additional setup after loading the view.
    }
    
    @objc func toggleSideMenu() {
        if self.embeddedViewLeadingConst.constant != 0 {
            self.embeddedViewLeadingConst.constant = 0
            mainViewController.alpha = 0.3
            mainViewController.isUserInteractionEnabled = false
        } else {
            self.embeddedViewLeadingConst.constant = -300
            mainViewController.alpha = 1
            mainViewController.isUserInteractionEnabled = true
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }

}
