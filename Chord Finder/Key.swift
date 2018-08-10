//
//  Key.swift
//  Chord Finder
//
//  Created by John Jones on 7/21/18.
//  Copyright © 2018 John Jones. All rights reserved.
//

import Foundation

class Key {
    
    private var keyName: String = ""
    private var place: Int = 0
    public var keysArray = ["C", "C#", "D", "Eb", "E", "F", "F#", "G", "Ab", "A", "Bb", "B"]
    public static let majorDescrip = "This chord consists of the root, 3rd, and 5th of the scale"
    public static let minorDescrip = "This chord consists of the root, flat 3rd, and 5th of the scale"
    public static let diminishedDescrip = "This chord consists of the root, flat 3rd, and flat 5th of the scale"
    public static let augmentedDescrip = "This chord consists of the root, 3rd, and sharp 5th of the scale"
    public static let major7thDescrip = "This chord consists of the root, 3rd, 5th, and maj 7th of the scale"
    public static let minor7thDescrip = "This chord consists of the root, flat 3rd, 5th, and flat 7th of the scale"
    public static let dom7thDescrip = "This chord consists of the root, 3rd, 5th, and flat 7th of the scale"
    public static let major6thDescrip = "This chord consists of the root, 3rd, 5th, and 6th of the scale"
    public static let minor6thDescrip = "This chord consists of the root, flat 3rd, 5th, and 6th of the scale"
    public static let diminished7thDescrip = "This chord consists of the root, flat 3rd, flat 5th, and double flat 7th of the scale"
    public static let augmented7thDescrip = "This chord consists of the root, 3rd, sharp 5th, and flat 7th of the scale"
    public static let dom7thb5Descrip = "This chord consists of the root, 3rd, flat 5th, and flat 7th of the major scale"
    public static let maj7thb3Descrip = "This chord consists of the root, flat 3rd, 5th, and maj 7th of the scale"
    public static let min7thb5Descrip = "This chord consists of the root, flat 3rd, flat 5th, and flat 7th of the major scale"
    public static let dom7thSus4Descrip = "This chord consists of the root, 4th, 5th, and flat 7th of the major scale"
    
    
    /// Initializer for Key object
    ///
    /// - Parameters:
    ///   - keyName: name of key
    ///   - place: place on piano
    public init(named keyName: String, placedAt place: Int) {
        self.keyName = keyName
        self.place = place
    }
    
    /// Function to return name of Key
    ///
    /// - Returns: name of Key
    func getKeyName () -> String {
        return keyName
    }
    
    /// Function that reorders keyArray by placing selected key at the front
    /// of the array
    ///
    /// - Returns: returns a new, reorderd array
    func reordered() -> [String] {
        var tempCustom = [String]()
        var place = 0
        for i in 0..<keysArray.count {
            if keysArray[i].elementsEqual(self.getKeyName()) {
                tempCustom.append(self.getKeyName())
                place = i + 1
            }
        }
        
        for i in place..<keysArray.count {
            tempCustom.append(keysArray[i])
        }
        
        for i in 0..<place - 1 {
            tempCustom.append(keysArray[i])
        }
        
        return tempCustom
    }
    
    /// Function that finds the keys that make up the major chord
    ///
    /// - Returns: String of keys in major chord
    func getMajor () -> String {
        var customKeyOrder = self.reordered()
        let root = self.getKeyName()
        var third = ""
        var fifth = ""
        for i in 0..<customKeyOrder.count {
            if i == 4 {
                third = customKeyOrder[i]
            }
            if i == 7 {
                fifth = customKeyOrder[i]
            }
        }
        return "\(root)-\(third)-\(fifth)"
    }
    
    /// Function that finds the keys that make up the minor chord
    ///
    /// - Returns: String of keys in minor chord
    func getMinor () -> String {
        var customKeyOrder = self.reordered()
        let root = self.getKeyName()
        var bthird = ""
        var fifth = ""
        for i in 0..<customKeyOrder.count {
            if i == 3 {
                bthird = customKeyOrder[i]
            }
            if i == 7 {
                fifth = customKeyOrder[i]
            }
        }
        return "\(root)-\(bthird)-\(fifth)"
    }
    
    /// Function that finds the keys that make up the diminished chord
    ///
    /// - Returns: String of keys in diminished chord
    func getDiminished () -> String {
        var customKeyOrder = self.reordered()
        let root = self.getKeyName()
        var bthird = ""
        var bfifth = ""
        for i in 0..<customKeyOrder.count {
            if i == 3 {
                bthird = customKeyOrder[i]
            }
            if i == 6 {
                bfifth = customKeyOrder[i]
            }
        }
        return "\(root)-\(bthird)-\(bfifth)"
    }
    
    /// Function that finds the keys that make up the augmented chord
    ///
    /// - Returns: String of keys in augmented chord
    func getAugmented () -> String {
        var customKeyOrder = self.reordered()
        let root = self.getKeyName()
        var third = ""
        var sharpFifth = ""
        for i in 0..<customKeyOrder.count {
            if i == 4 {
                third = customKeyOrder[i]
            }
            if i == 8 {
                sharpFifth = customKeyOrder[i]
            }
        }
        return "\(root)-\(third)-\(sharpFifth)"
    }
    
    /// Function that finds the keys that make up the major 7th chord
    ///
    /// - Returns: String of keys in major 7th chord
    func getMajor7th () -> String {
        var customKeyOrder = self.reordered()
        let root = self.getKeyName()
        var third = ""
        var fifth = ""
        var maj7th = ""
        for i in 0..<customKeyOrder.count {
            if i == 4 {
                third = customKeyOrder[i]
            }
            if i == 7 {
                fifth = customKeyOrder[i]
            }
            
            if i == 11 {
                maj7th = customKeyOrder[i]
            }
        }
        return "\(root)-\(third)-\(fifth)-\(maj7th)"
    }
    
    /// Function that finds the keys that make up the minor 7th chord
    ///
    /// - Returns: String of keys in minor 7th chord
    func getMinor7th () -> String {
        var customKeyOrder = self.reordered()
        let root = self.getKeyName()
        var bthird = ""
        var fifth = ""
        var b7th = ""
        for i in 0..<customKeyOrder.count {
            if i == 3 {
                bthird = customKeyOrder[i]
            }
            if i == 7 {
                fifth = customKeyOrder[i]
            }
            
            if i == 10 {
                b7th = customKeyOrder[i]
            }
        }
        return "\(root)-\(bthird)-\(fifth)-\(b7th)"
    }
    
    /// Function that finds the keys that make up the dominant 7th chord
    ///
    /// - Returns: String of keys in dominant 7th chord
    func getDom7th () -> String {
        var customKeyOrder = self.reordered()
        let root = self.getKeyName()
        var third = ""
        var fifth = ""
        var b7th = ""
        for i in 0..<customKeyOrder.count {
            if i == 4 {
                third = customKeyOrder[i]
            }
            if i == 7 {
                fifth = customKeyOrder[i]
            }
            
            if i == 10 {
                b7th = customKeyOrder[i]
            }
        }
        return "\(root)-\(third)-\(fifth)-\(b7th)"
    }
    
    /// Function that finds the keys that make up the major 6th chord
    ///
    /// - Returns: String of keys in major 6th chord
    func getMajor6th () -> String {
        var customKeyOrder = self.reordered()
        let root = self.getKeyName()
        var third = ""
        var fifth = ""
        var sixth = ""
        for i in 0..<customKeyOrder.count {
            if i == 4 {
                third = customKeyOrder[i]
            }
            if i == 7 {
                fifth = customKeyOrder[i]
            }
            
            if i == 9 {
                sixth = customKeyOrder[i]
            }
        }
        return "\(root)-\(third)-\(fifth)-\(sixth)"
    }
    
    /// Function that finds the keys that make up the minor 6th chord
    ///
    /// - Returns: String of keys in minor 6th chord
    func getMinor6th () -> String {
        var customKeyOrder = self.reordered()
        let root = self.getKeyName()
        var bthird = ""
        var fifth = ""
        var sixth = ""
        for i in 0..<customKeyOrder.count {
            if i == 3 {
                bthird = customKeyOrder[i]
            }
            if i == 7 {
                fifth = customKeyOrder[i]
            }
            
            if i == 9 {
                sixth = customKeyOrder[i]
            }
        }
        return "\(root)-\(bthird)-\(fifth)-\(sixth)"
    }
    
    /// Function that finds the keys that make up the diminished 7th chord
    ///
    /// - Returns: String of keys in diminished 7th chord
    func getDim7th () -> String {
        var customKeyOrder = self.reordered()
        let root = self.getKeyName()
        var bthird = ""
        var bfifth = ""
        var doubleb7th = ""
        for i in 0..<customKeyOrder.count {
            if i == 3 {
                bthird = customKeyOrder[i]
            }
            if i == 6 {
                bfifth = customKeyOrder[i]
            }
            
            if i == 9 {
                doubleb7th = customKeyOrder[i]
            }
        }
        return "\(root)-\(bthird)-\(bfifth)-\(doubleb7th)"
    }
    
    /// Function that finds the keys that make up the augmented 7th chord
    ///
    /// - Returns: String of keys in augmented 7th chord
    func getAug7th () -> String {
        var customKeyOrder = self.reordered()
        let root = self.getKeyName()
        var third = ""
        var sharpFifth = ""
        var b7th = ""
        for i in 0..<customKeyOrder.count {
            if i == 4 {
                third = customKeyOrder[i]
            }
            if i == 8 {
                sharpFifth = customKeyOrder[i]
            }
            
            if i == 10 {
                b7th = customKeyOrder[i]
            }
        }
        return "\(root)-\(third)-\(sharpFifth)-\(b7th)"
    }
    
    /// Function that finds the keys that make up the dominant 7th b5th chord
    ///
    /// - Returns: String of keys in dominant 7th b5th chord
    func getDom7thb5 () -> String {
        var customKeyOrder = self.reordered()
        let root = self.getKeyName()
        var third = ""
        var bfifth = ""
        var b7th = ""
        for i in 0..<customKeyOrder.count {
            if i == 4 {
                third = customKeyOrder[i]
            }
            if i == 6 {
                bfifth = customKeyOrder[i]
            }
            
            if i == 10 {
                b7th = customKeyOrder[i]
            }
        }
        return "\(root)-\(third)-\(bfifth)-\(b7th)"
    }
    
    /// Function that finds the keys that make up the major 7th b3rd chord
    ///
    /// - Returns: String of keys in major 7th b3rd chord
    func getMaj7thb3 () -> String {
        var customKeyOrder = self.reordered()
        let root = self.getKeyName()
        var bthird = ""
        var fifth = ""
        var maj7th = ""
        for i in 0..<customKeyOrder.count {
            if i == 3 {
                bthird = customKeyOrder[i]
            }
            if i == 7 {
                fifth = customKeyOrder[i]
            }
            
            if i == 11 {
                maj7th = customKeyOrder[i]
            }
        }
        return "\(root)-\(bthird)-\(fifth)-\(maj7th)"
    }
    
    /// Function that finds the keys that make up the minor 7th b5th chord
    ///
    /// - Returns: String of keys in minor 7th b5th chord
    func getMin7thb5 () -> String {
        var customKeyOrder = self.reordered()
        let root = self.getKeyName()
        var bthird = ""
        var bfifth = ""
        var b7th = ""
        for i in 0..<customKeyOrder.count {
            if i == 3 {
                bthird = customKeyOrder[i]
            }
            if i == 6 {
                bfifth = customKeyOrder[i]
            }
            
            if i == 10 {
                b7th = customKeyOrder[i]
            }
        }
        return "\(root)-\(bthird)-\(bfifth)-\(b7th)"
    }
    
    /// Function that finds the keys that make up the dominant 7th sus 4th chord
    ///
    /// - Returns: String of keys in dominant 7th sus 4th chord
    func getDom7thSus4 () -> String {
        var customKeyOrder = self.reordered()
        let root = self.getKeyName()
        var fourth = ""
        var fifth = ""
        var b7th = ""
        for i in 0..<customKeyOrder.count {
            if i == 5 {
                fourth = customKeyOrder[i]
            }
            if i == 7 {
                fifth = customKeyOrder[i]
            }
            
            if i == 10 {
                b7th = customKeyOrder[i]
            }
        }
        return "\(root)-\(fourth)-\(fifth)-\(b7th)"
    }
    
}
