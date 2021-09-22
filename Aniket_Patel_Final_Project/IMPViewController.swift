//
//  IMPViewController.swift
//  Aniket_Patel_Final_Project
//
//  Created by Aniket Patel on 2021-04-13.
//

import UIKit

class IMPViewController: UIViewController {

    
    @IBOutlet var choices: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func handleSelection(_ sender: UIButton) {
        choices.forEach{ (button) in
            UIView.animate(withDuration: 0.5, animations: {
            button.isHidden = !button.isHidden
                // this is used for getting animation from the button
                self.view.layoutIfNeeded()
            })
        }
        
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        // Just to print that this button is pressed
        enum subChoices: String{
            case mail = "Mail"
            case news = "News"
            case sports = "Sports"
            case entertainment = "Entertainment"
            case georgian = "Georgian"
        }
        guard let title = sender.currentTitle, let choice = subChoices(rawValue: title) else {
            return
        }
        
        switch choice {
        case .mail:
            print("Mail Pressed")
        case .sports:
            print("Sports Pressed")
        case .entertainment:
            print("Entertainment Pressed")
        case .news:
            print("News Pressed")
        case .georgian:
            print("Georgian Pressed")
        default:
            print("")
        }
    }
    
    // Hyperlink
    
    
    
    
}
