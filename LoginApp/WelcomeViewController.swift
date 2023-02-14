//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Kirill Kniga on 14.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welocomeLabel: UILabel!
    @IBOutlet var hiLabel: UILabel!
    
    var welcomeUser: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        welocomeLabel.text = "Hello, \(String(welcomeUser))"
        hiLabel.text = "👋"
    }
    
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
        
    }
    
    
}
