//
//  APIManager.swift
//  CustomDrawer
//
//  Created by Julio Collado on 7/23/19.
//  Copyright © 2019 Julio Collado. All rights reserved.
//

import Foundation
import Alamofire

class APITestManager {
    
    func getInfomationTest(completion: @escaping (SurveyResponse) -> ()) {
        APITest().getInformation().responseJSON { response in
            if let data = response.data {
                do {
                   let surveyJSON =  try JSONSerialization.jsonObject(with: data, options: []) as? [String : Any]
                   let suerveyObject = SurveyResponse.init(JSON: surveyJSON ?? [:])
                   print("\(suerveyObject?.question)")
                   print("\(suerveyObject?.submittedResponse)")
                    if let object = suerveyObject {
                        completion(object)
                    }
                } catch {
                    print("SERIALIZATION ERROR")
                }
               
            } else {
                print("UNREADABLE")
            }
        }
    }
    
    
}

