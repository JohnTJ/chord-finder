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
    @IBOutlet weak var chordDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerView.dataSource = self

        keys.append(c)
        keys.append(cSharp)
        keys.append(d)
        keys.append(eFlat)
        keys.append(e)
        keys.append(f)
        keys.append(fSharp)
        keys.append(g)
        keys.append(aFlat)
        keys.append(a)
        keys.append(bFlat)
        keys.append(b)
        
        print(c.getMajor())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let chords = ["major", "minor", "diminished", "augmented", "major 7th", "minor 7th", "dominant 7th", "major 6th", "minor 6th", "diminished 7th", "augmented 7th", "dominant 7th b5th", "major 7th b3rd", "minor 7th b5th", "dominant 7th sus 4th"]
    
    var keys = [Key]()
    let c = Key(named: "C", placedAt: 1)
    let cSharp = Key(named: "C#", placedAt: 2)
    let d = Key(named: "D", placedAt: 3)
    let eFlat = Key(named: "Eb", placedAt: 4)
    let e = Key(named: "E", placedAt: 5)
    let f = Key(named: "F", placedAt: 6)
    let fSharp = Key(named: "F#", placedAt: 7)
    let g = Key(named: "G", placedAt: 8)
    let aFlat = Key(named: "Ab", placedAt: 9)
    let a = Key(named: "A", placedAt: 10)
    let bFlat = Key(named: "Bb", placedAt: 11)
    let b = Key(named: "B", placedAt: 12)
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return keys[row].getKeyName()
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
        let key = keys[pickerView.selectedRow(inComponent: 0)].getKeyName()
        let chord = chords[pickerView.selectedRow(inComponent: 1)]
        chordTitleLabel.text = "\(key) \(chord)"
        
        if chord.elementsEqual("major") {
            keysLabel.text = keys[pickerView.selectedRow(inComponent: 0)].getMajor()
            chordDescription.text = Key.majorDescrip
        } else if chord.elementsEqual("minor") {
            keysLabel.text = keys[pickerView.selectedRow(inComponent: 0)].getMinor()
            chordDescription.text = Key.minorDescrip
        } else if chord.elementsEqual("diminished") {
            keysLabel.text = keys[pickerView.selectedRow(inComponent: 0)].getDiminished()
            chordDescription.text = Key.diminishedDescrip
        } else if chord.elementsEqual("augmented") {
            keysLabel.text = keys[pickerView.selectedRow(inComponent: 0)].getAugmented()
            chordDescription.text = Key.augmentedDescrip
        } else if chord.elementsEqual("major 7th") {
            keysLabel.text = keys[pickerView.selectedRow(inComponent: 0)].getMajor7th()
            chordDescription.text = Key.major7thDescrip
        } else if chord.elementsEqual("minor 7th") {
            keysLabel.text = keys[pickerView.selectedRow(inComponent: 0)].getMinor7th()
            chordDescription.text = Key.minor7thDescrip
        } else if chord.elementsEqual("dominant 7th") {
            keysLabel.text = keys[pickerView.selectedRow(inComponent: 0)].getDom7th()
            chordDescription.text = Key.dom7thDescrip
        } else if chord.elementsEqual("major 6th") {
            keysLabel.text = keys[pickerView.selectedRow(inComponent: 0)].getMajor6th()
            chordDescription.text = Key.major6thDescrip
        } else if chord.elementsEqual("minor 6th") {
            keysLabel.text = keys[pickerView.selectedRow(inComponent: 0)].getMinor6th()
            chordDescription.text = Key.minor6thDescrip
        } else if chord.elementsEqual("diminished 7th") {
            keysLabel.text = keys[pickerView.selectedRow(inComponent: 0)].getDim7th()
            chordDescription.text = Key.diminished7thDescrip
        } else if chord.elementsEqual("augmented 7th") {
            keysLabel.text = keys[pickerView.selectedRow(inComponent: 0)].getAug7th()
            chordDescription.text = Key.augmented7thDescrip
        } else if chord.elementsEqual("dominant 7th b5th") {
            keysLabel.text = keys[pickerView.selectedRow(inComponent: 0)].getDom7thb5()
            chordDescription.text = Key.dom7thb5Descrip
        } else if chord.elementsEqual("major 7th b3rd") {
            keysLabel.text = keys[pickerView.selectedRow(inComponent: 0)].getMaj7thb3()
            chordDescription.text = Key.maj7thb3Descrip
        } else if chord.elementsEqual("minor 7th b5th") {
            keysLabel.text = keys[pickerView.selectedRow(inComponent: 0)].getMin7thb5()
            chordDescription.text = Key.min7thb5Descrip
        } else if chord.elementsEqual("dominant 7th sus 4th") {
            keysLabel.text = keys[pickerView.selectedRow(inComponent: 0)].getDom7thSus4()
            chordDescription.text = Key.dom7thSus4Descrip
        }
        
    }
    
}

