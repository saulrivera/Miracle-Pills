//
//  ViewController.swift
//  MiraclePills
//
//  Created by Saul Rivera on 6/27/17.
//  Copyright © 2017 Dymtech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var labelPill: UILabel!
    @IBOutlet weak var pricePillLabel: UILabel!
    
    @IBOutlet weak var divider: UIView!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameEntry: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressEntry: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityEntry: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var entryCountry: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var entryZip: UITextField!
    @IBOutlet weak var buyButton: UIButton!
    
    @IBOutlet weak var successImg: UIImageView!
    
    let states = ["Durango", "Nuevo Leon", "Jalisco", "Youcatan", "Ciudad de Mexico", "Aguascalientes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBottonPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        entryCountry.isHidden = true
        zipLabel.isHidden = true
        entryZip.isHidden = true
        buyButton.isHidden = true
    }
    
    @IBAction func buyButtonPressed(_ sender: Any) {
        
        pillImage.isHidden = true
        labelPill.isHidden = true
        pricePillLabel.isHidden = true
        
        divider.isHidden = true
        
        fullNameLabel.isHidden = true
        fullNameEntry.isHidden = true
        addressLabel.isHidden = true
        addressEntry.isHidden = true
        cityLabel.isHidden = true
        cityEntry.isHidden = true
        stateLabel.isHidden = true
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        countryLabel.isHidden = true
        entryCountry.isHidden = true
        zipLabel.isHidden = true
        entryZip.isHidden = true
        buyButton.isHidden = true
        
        successImg.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        entryCountry.isHidden = false
        zipLabel.isHidden = false
        entryZip.isHidden = false
        buyButton.isHidden = false
    }
    
}

