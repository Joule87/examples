//
//  APISurvey.swift
//  CustomDrawer
//
//  Created by Julio Collado on 7/23/19.
//  Copyright © 2019 Julio Collado. All rights reserved.
//

import Foundation
import Alamofire

class APITest {
    
    func getInformation() -> DataRequest {
        let url = "https://api.myjson.com/bins/ajupt"
        let dataRequest = AF.request(url)
        return dataRequest
    }
    
}
