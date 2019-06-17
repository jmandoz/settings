//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Jason Mandozzi on 6/17/19.
//  Copyright © 2019 Jason Mandozzi. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    @IBOutlet weak var settingNameLabel: UILabel!

    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingSwitch: UISwitch!
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

}
