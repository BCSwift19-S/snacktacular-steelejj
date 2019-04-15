//
//  ReviewTableViewController.swift
//  Snacktacular
//
//  Created by James Steele on 4/15/19.
//  Copyright © 2019 John Gallaugher. All rights reserved.
//

import UIKit

class ReviewTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var postedByLabel: UILabel!
    @IBOutlet weak var reviewTitle: UITextField!
    @IBOutlet weak var reviewDateLabel: UILabel!
    @IBOutlet weak var reviewView: UITextView!
//    @IBOutlet weak var reviewDate: UILabel!
    @IBOutlet weak var canvelBarButton: UIBarButtonItem!
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    @IBOutlet weak var deleteButton: UIBarButtonItem!
    @IBOutlet weak var buttonsBackgroundView: UIView!
    
    func leaveViewController() {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
        
    }

    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
    }
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
    }
    @IBAction func deletButtonPressed(_ sender: UIButton) {
    }
    @IBAction func reviewTitleChanged(_ sender: UITextField) {
    }
    @IBAction func returnTitleDonePressed(_ sender: UITextField) {
    }
    
}
