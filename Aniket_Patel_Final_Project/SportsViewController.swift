//
//  SportsViewController.swift
//  Aniket_Patel_Final_Project
//
//  Created by Aniket Patel on 2021-04-22.
//

import UIKit

class SportsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SportsLink" {
            segue.destination as! SportsViewController
        }
    }

    @IBAction func foxSportsLink(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "https://www.foxsports.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func espnLink(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "https://www.espn.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    
    
}
