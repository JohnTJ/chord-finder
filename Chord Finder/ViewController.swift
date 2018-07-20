//
//  ViewController.swift
//  Chord Finder
//
//  Created by John Jones on 7/20/18.
//  Copyright © 2018 John Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var chordTitleLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var keysLabel: UILabel!
    
    let keys = ["C", "C#", "D", "Eb", "E", "F", "F#", "G#", "Ab", "A", "Bb", "B"]
    let chords = ["major", "minor", "diminished", "augmented", "major 7th", "minor 7th", "dominant 7th", "major 6th", "minor 6th", "augmented 7th", "dominant 7th b5th", "major 7th b3rd", "minor 7th b5th", "dominant 7th sus 4th"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return keys[row]
        }
        
        return chords[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return keys.count
        }
        
        return chords.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let key = keys[pickerView.selectedRow(inComponent: 0)]
        let chord = chords[pickerView.selectedRow(inComponent: 1)]
        chordTitleLabel.text = "\(key) \(chord)"
        
        keysLabel.text = "Working on it"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

