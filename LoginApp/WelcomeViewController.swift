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
        setGradientBackground()

    }
    
    func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemGreen.cgColor, UIColor.blue.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.3, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.3, y: 0.0)
        gradientLayer.locations = [0,1]
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
    }
}
