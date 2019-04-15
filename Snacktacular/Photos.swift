//
//  Photos.swift
//  Snacktacular
//
//  Created by James Steele on 4/15/19.
//  Copyright © 2019 John Gallaugher. All rights reserved.
//

import Foundation
import Firebase


class Photos {
    var photoAray: [Photo] = []
    var db: Firestore!
    
    init() {
        db = Firestore.firestore()
    }
}
