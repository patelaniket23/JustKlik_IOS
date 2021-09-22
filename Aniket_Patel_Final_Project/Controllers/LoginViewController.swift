//
//  LoginViewController.swift
//  Aniket_Patel_Final_Project
//
//  Created by Aniket Patel on 2021-04-13.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
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
    

    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        
        //Cleaned fields
        let username = userName.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let Password = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().signIn(withEmail: username, password: Password) { (results, error) in
            
            if error != nil {
                //Unable to Sign in
                self.myError.text = error!.localizedDescription
                self.myError.alpha = 1
            }
            else {
                
                let IMPViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.IMPViewController) as? IMPViewController
                
                self.view.window?.rootViewController = IMPViewController
                self.view.window?.makeKeyAndVisible()
            }
        }
        
    }
    

}
