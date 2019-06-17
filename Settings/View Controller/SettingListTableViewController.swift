//
//  SettingListTableViewController.swift
//  Settings
//
//  Created by Jason Mandozzi on 6/17/19.
//  Copyright © 2019 Jason Mandozzi. All rights reserved.
//

import UIKit

class SettingListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return SettingController.sharedInstance.settings.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else {return UITableViewCell() }

        
        // Configure the cell...
        let setting = SettingController.sharedInstance.settings[indexPath.row]
        cell.cellDelegate = self
        cell.updateViews(with: setting)

        return cell
    }
} //end of class

extension SettingListTableViewController: SettingCellDelegate {
    func settingSwtichTapped(for cell: SettingTableViewCell) {
        // Find the index path for the cell
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        // using that index path - find the setting
        let setting = SettingController.sharedInstance.settings[indexPath.row]
        // toggle the isOn for that string
        
        SettingController.sharedInstance.toggleIsOn(for: setting)
        // Updates the cells views
        cell.updateViews(with: setting)
    }
    
    
}
