//
//  ViewController.swift
//  LoginApp
//
//  Created by Kirill Kniga on 13.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    @IBOutlet var userNameLabel: UITextField!
    @IBOutlet var passwordLabel: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? WelcomeViewController else { return }
        settingsVC.welcomeUser = userNameLabel.text
    }
    
    
    @IBAction func logInButtonTapped() {
        guard let inputText = userNameLabel.text, !inputText.isEmpty else {
            wrongPassword(with: "UserName is empty", andmessage: "Please try again")
            return
        }
        guard let inputText = passwordLabel.text, !inputText.isEmpty else {
            wrongPassword(with: "Password is empty", andmessage: "Please try again")
            return
        }
        if userNameLabel.text == "Alex" && passwordLabel.text == "1" {
            return
        } else {
            wrongPassword(with: "Incorrect username or password", andmessage: "Please try again")
        }
    }
    
    @IBAction func forgotUserNameButtonTapped() {
        showUserName(with: "Your Log In is:", andmessage: "Alex")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showPass(with: "Your Password is:", andmessage: "1")
    }
    
    @IBAction  func unwind(for segue: UIStoryboardSegue) {
        userNameLabel.text = ""
        passwordLabel.text = ""
    }
   

}

// MARK: - UIAlertController
extension LoginViewController {
    private func showUserName(with title: String, andmessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    private func showPass(with title: String, andmessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Oh, yes!", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    private func wrongPassword(with title: String, andmessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordLabel.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
