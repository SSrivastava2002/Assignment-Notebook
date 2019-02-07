//
//  Assignmnet.swift
//  Assignment Notebook
//
//  Created by Shubham Srivastava on 2/6/19.
//  Copyright © 2019 Shubham Srivastava. All rights reserved.
//

import UIKit

class Assignmnet: Codable {
    var title : String
    var course : String
    var dueDate : String
    var description : String
    
    init(title: String, course : String, dueDate : String, description : String){
        self.title = title
        self.course = course
        self.dueDate = dueDate
        self.description = description 
    }

}
