//
//  settingsViewController.swift
//  tipper
//
//  Created by Dane Acena on 7/28/20.
//  Copyright © 2020 daneography. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController, UITableViewDataSource {
    
    let fruits = ["Apple", "Mango", "Strawberry"]
    let vegetables = ["Pepper", "Lettuce", "Brocolli"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlainCell", for: indexPath)
            //Fruit Section
        cell.textLabel?.text = fruits[indexPath.row]
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
