//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Jason Mandozzi on 6/17/19.
//  Copyright © 2019 Jason Mandozzi. All rights reserved.
//

import UIKit
//Define the protocol
protocol SettingCellDelegate: class {
    func settingSwtichTapped(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {

    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingSwitch: UISwitch!
    
//define the delegate
    weak var cellDelegate: SettingCellDelegate?
    
    func updateViews(with setting: Setting){
        settingIconImageView.image = setting.icon
        settingNameLabel.text = setting.name
        settingSwitch.isOn = setting.isOn
//
//        if settingSwitch.isOn == true {
//            self.backgroundColor = UIColor.blue
//        } else {
//            self.backgroundColor = UIColor.white
//        }
//
        self.backgroundColor = setting.isOn ? .cyan : .white
    }
    @IBAction func settingCellToggled(_ sender: Any) {
        cellDelegate?.settingSwtichTapped(for: self)
    }
}// end of class

