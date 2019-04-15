//
//  Review.swift
//  Snacktacular
//
//  Created by James Steele on 4/15/19.
//  Copyright © 2019 John Gallaugher. All rights reserved.
//

import Foundation
import Firebase

class Review {
    var title: String
    var text: String
    var rating: Int
    var reviewerUserID: String
    var date: Date
    var documentID: String
    
    init(title: String, text: String, rating: Int, reviewerUserID: String, date: Date, documentID: String) {
        self.title = title
        self.text = text
        self.rating = rating
        self.reviewerUserID = reviewerUserID
        self.date = date
        self.documentID = documentID
    }
    
    convenience init(dictionary: [String: Any]) {
        let title = dictionary["title"] as! String? ?? ""
        let text = dictionary["text"] as! String? ?? ""
        let rating = dictionary["rating"] as! Int? ?? 0
        let reviewerUserID = dictionary["reviewerUserID"] as! String? ?? ""
        let date = dictionary["date"] as! Date? ?? Date()
        self.init(title: title, text: text, rating: rating, reviewerUserID: reviewerUserID, date: date, documentID: "")
    }
    
    var dictionary: [String: Any] {
        return ["title" : title, "text": text, "rating": rating, "reviewerUserID": reviewerUserID, "date": date, "documentID": documentID]
    }
    
    convenience init() {
        let currentUserID = Auth.auth().currentUser?.email ?? "Unknown User"
        self.init(title: "", text: "", rating: 0, reviewerUserID: currentUserID, date: Date(), documentID: "")
    }
    
    func saveData(spot: Spot, completion: @escaping (Bool) -> ()) {
        let db = Firestore.firestore()
        let dataToSave = self.dictionary
        if self.documentID != "" {
            let ref = db.collection("spots").document(spot.documentID).collection("review").document()self.documentID)
            ref.setData(dataToSave) { (error) in
                if let error = error {
                    print("error updating document")
                    return completion(false)
                } else {
                    completion(true)
                }
            }
        } else {
            var ref: DocumentReference? = nil
            ref = db.collection("spots").document(spot.documentID).addDocument(data: dataToSave) {error in
                if let error = error {
                    print("error updating document \(self.documentID) \(error.localizedDescription)")
                    return completion(false)
                } else {
                    completion(true)
                }
            }
        }
    }
}
