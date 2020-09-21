//
//  TableViewController.swift
//  YRL_Sample
//
//  Created by Yasuyuki Suzuki on 2020/05/09.
//  Copyright © 2020 Yasuyuki Suzuki. All rights reserved.
//

import UIKit
import os.log

class TableViewController: UITableViewController {
    var flowers = [Flower]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadSampleFlower()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return flowers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = flowers[indexPath.row].name
        cell.imageView?.image = flowers[indexPath.row].photo

        return cell
    }

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

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        guard let flowerDetailViewController = segue.destination as? FolowerDetailViewController else {
            fatalError("Unexpected destination: \(segue.destination)")
        }
        
        guard let selectedMealCell = sender as? TableViewCell else {
            fatalError("Unexpected sender: \(String(describing: sender))")
        }
         
        guard let indexPath = tableView.indexPath(for: selectedMealCell) else {
            fatalError("The selected cell is not being displayed by the table")
        }
        
        let selectedFlower = flowers[indexPath.row]
        flowerDetailViewController.flower = selectedFlower
    }
    
    func loadSampleFlower() {
        let photo1 = UIImage(named: "flower1")
        let photo2 = UIImage(named: "flower2")
        let photo4 = UIImage(named: "flower4")
        
        if let flower1 = Flower.init(name: "ガーベラ", photo: photo1, photograper: "Andrew Small") {
             flowers.append(flower1)
        }
        if let flower2 = Flower.init(name: "クチナシ", photo: photo2, photograper: "Annie Spratt") {
            flowers.append(flower2)
        }
        
        if let flower3 = Flower.init(name: "バラ", photo: nil, photograper: "秋山正太郎") {
            flowers.append(flower3)
        }
        
        if let flower4 = Flower.init(name: "シャクヤク", photo: photo4, photograper: "Olia Gonzha") {
            flowers.append(flower4)
        }
        
        
        let name = ""
        var photo: UIImage?
        photo = nil
        let photographer = "秋山正太郎"
        
        
        if let flower = Flower.init(name: name, photo: photo, photograper: photographer) {
            flowers.append(flower)
        } else {
            os_log("loadData(): failed to create Flower object.", type: .error)
        }
        
    }

}
