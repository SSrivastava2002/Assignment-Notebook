//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Shubham Srivastava on 2/6/19.
//  Copyright © 2019 Shubham Srivastava. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    var detailItem: Assignmnet? {
        didSet {
            // Update the view.
            configureView()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let assignment = self.detailItem{
            if titleTextField != nil {
                titleTextField.text = assignment.title
                nameTextField.text = assignment.course
                dueDateTextField.text = assignment.dueDate
                descriptionTextField.text = assignment.description
                
            }
        }
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let assignment = self.detailItem{
            assignment.title = titleTextField.text!
            assignment.course = nameTextField.text!
            assignment.dueDate = dueDateTextField.text!
            assignment.description = descriptionTextField.text!
        }
    }

  



}

