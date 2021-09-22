//
//  EntertainmentTableViewController.swift
//  Aniket_Patel_Final_Project
//
//  Created by Aniket Patel on 2021-04-22.
//

import UIKit

class EntertainmentTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.navigationItem.title = "Entertainment"


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        //self.navigationItem.leftBarButtonItem = self.backButtonItem
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "EntertainmentLink" {
                segue.destination as! NewsViewController
            }
        }
        
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let backItem = UIBarButtonItem()
            backItem.title = "GoBack"
            navigationItem.backBarButtonItem = backItem // This will show in the next view controller being pushed
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EntertainmentIdentifier", for: indexPath)
        return cell
    }
    
    @IBAction func netflixLink(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "https://www.netflix.com/ca/")! as URL, options: [:], completionHandler: nil)
    }
    

    
    
//    @IBAction func hotstarLink(_ sender: UIButton) {
//
//        UIApplication.shared.open(URL(string: "https://www.hotstar.com/ca")! as URL, options: [:], completionHandler: nil)
//    }
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
