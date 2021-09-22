//
//  NewsViewController.swift
//  Aniket_Patel_Final_Project
//
//  Created by Aniket Patel on 2021-04-22.
//

import UIKit

class NewsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NewsLink" {
            segue.destination as! NewsViewController
        }
    }

    @IBAction func cbcLink(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "https://www.cbc.ca/news/thenational")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func ctvLink(_ sender: UIButton) {
        
            UIApplication.shared.open(URL(string: "https://www.ctvnews.ca/")! as URL, options: [:], completionHandler: nil)
    }
    
}
