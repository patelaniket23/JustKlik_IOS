//
//  MailViewController.swift
//  Aniket_Patel_Final_Project
//
//  Created by Aniket Patel on 2021-04-22.
//

import UIKit

class MailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MailLink" {
            segue.destination as! MailViewController
        }
    }
    
    
    @IBAction func gmailLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://mail.google.com/mail/u/0/#inbox")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func yahooLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://ca.yahoo.com/")! as URL, options: [:], completionHandler: nil)
        
    }
    
}
