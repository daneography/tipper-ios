//
//  settingsViewController.swift
//  tipper
//
//  Created by Dane Acena on 7/28/20.
//  Copyright © 2020 daneography. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController, UITableViewDataSource {
  
    
    @IBOutlet weak var addButton: UIBarButtonItem!
    let vc = ViewController()
    var tipPercentages = [Int]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        vc.tipPercentages.append(70)
        tipPercentages = vc.tipPercentages
        print(tipPercentages.count)
        navigationItem.rightBarButtonItem = editButtonItem
        if tipPercentages.count > 5 {
            addButton.isEnabled = false
        }
    }
    
    @IBAction func addPercentage(_ sender: UIBarButtonItem) {
        if tipPercentages.count < 5 {
            
        } else {
            // TO-DO
        }
        
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == .delete){
            tipPercentages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tipPercentages.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlainCell", for: indexPath)
            //Tips Section
        cell.textLabel?.text = String(tipPercentages[indexPath.row])
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
