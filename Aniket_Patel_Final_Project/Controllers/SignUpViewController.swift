//
//  SignUpViewController.swift
//  Aniket_Patel_Final_Project
//
//  Created by Aniket Patel on 2021-04-13.
//

import UIKit
import Firebase
import FirebaseFirestore
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    
    @IBOutlet weak var myError: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        hideLabels()
    }
    
    func hideLabels() {
        //Hide the error
        myError.alpha = 0
    }
    
    // This will check that wheather passworrd is in this format or not SITE : https://iosdevcenters.blogspot.com/2017/06/password-validation-in-swift-30.html
    //Check the password
    func isPasswordValid(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }

    // Check fields and validate that it is correct or not and if correct than it will return nil otherwise error message
    
    func validateFields() -> String? {
        
        //Check that all fields are filled
        if firstName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            userName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            password.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill all the fields."
        }
        
        // Check that if the password is valid or not
        let cleanedPassword = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if isPasswordValid(cleanedPassword) == false {
            return "Please enter a valid password"
        }
        return nil
    }
    
    
    @IBAction func signUpPressed(_ sender: Any) {
        
        //Check out the fields and create new user
        let error = validateFields()
        
        if error != nil {
            // There is error
           showError(error!)
        }
        else {
            // Creating cleaned data
            let myFirstName = firstName.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let myLastName = lastName.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let myUserName = userName.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let myPassword = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)

            Auth.auth().createUser(withEmail: myUserName, password: myPassword) { [self] (results, err) in
                // Check if there are errors or not
                if  let err = err {
                    self.showError("There was an error while creating user.")
                }
                else {
                    // Firestore methods are used to store into database
                    let db = Firestore.firestore()
                    db.collection("users").addDocument(data: [
                        "firtName":firstName.text,
                        "lastName":lastName.text,
                        "uid": results!.user.uid]) { (error) in
                        
                        if error != nil {
                            // Display error
                            self.showError("Something went wrong while saving user.")
                        }
                    }
                    // Go back to home screen
                    self.transitionToHome()
                }
            }
        }
        
    }
    
    func showError(_ message: String) {
        
        myError.text = message
        myError.alpha = 1
    }
    
    func transitionToHome() {
        
        let IMPViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.IMPViewController) as? IMPViewController
        
        view.window?.rootViewController = IMPViewController
        view.window?.makeKeyAndVisible()
        
    }
    
}
