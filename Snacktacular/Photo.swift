//
//  Photo.swift
//  Snacktacular
//
//  Created by James Steele on 4/15/19.
//  Copyright © 2019 John Gallaugher. All rights reserved.
//

import Foundation
import Firebase

class Photo {
    var image: UIImage
    var description: String
    var postedBy: String
    var date: Date
    var documentUUID: String
    
    init(image: UIImage, description: String, postedBy: String, date: Date, documentUUID: documentUUID) {
        self.image = image
        self.description = description
        self. postedBy = postedBy
        self.date = date
        self.documentUUID = documentUUID
    }
}
