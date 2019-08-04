//
//  SurveyResponse.swift
//  CustomDrawer
//
//  Created by Julio Collado on 7/23/19.
//  Copyright © 2019 Julio Collado. All rights reserved.
//

import Foundation
import ObjectMapper

struct SurveyResponse: Mappable {
    
    var question: String = ""
    var submittedResponse: String?
    
    mutating func mapping(map: Map) {
        question <- map["question"]
        submittedResponse <- map["submittedResponse"]
    }
    
    init?(map: Map) {
        
    }
    
}
