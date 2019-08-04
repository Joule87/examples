//
//  ViewController.swift
//  CustomDrawer
//
//  Created by Julio Collado on 6/29/19.
//  Copyright © 2019 Julio Collado. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var response: UILabel!
    @IBOutlet weak var requestButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requestButton.setTitle("Request", for: .normal)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    @objc func triggerNotification() {
         NotificationCenter.default.post(name: NSNotification.Name.init(Constants.Notifications.TAPPED_ON_SIDE_MENU), object: nil)
    }
    
    @IBAction func openMenu(_ sender: Any) {
        triggerNotification()
    }
    
    @IBAction func makeRequest(_ sender: Any) {
        APITestManager().getInfomationTest(completion: responseCompletion)
    }
    
    func responseCompletion(surveyResponse: SurveyResponse) {
        self.question.text = surveyResponse.question
        self.response.text = surveyResponse.submittedResponse
    }
}

