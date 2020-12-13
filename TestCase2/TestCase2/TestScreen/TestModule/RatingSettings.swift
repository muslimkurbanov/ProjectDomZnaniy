//
//  UserSettings.swift
//  TestCase2
//
//  Created by Муслим Курбанов on 13.12.2020.
//

import Foundation

final class RatingSettings {
    
    private enum SettingsKeys: String {
        case mathResults
        case russianResults
        case historyResults
        case socialResults
    }
     
    static var mathResults: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.mathResults.rawValue)
        } set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.mathResults.rawValue
            if let name = newValue {
                print("Value \(name) was added to key \(key)")
                defaults.set(name, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    
    static var russianResults: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.russianResults.rawValue)
        } set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.russianResults.rawValue
            if let surname = newValue {
                print("Value \(surname) was added to key \(key)")
                defaults.set(surname, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    
    static var historyResults: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.historyResults.rawValue)
        } set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.historyResults.rawValue
            if let surname = newValue {
                print("Value \(surname) was added to key \(key)")
                defaults.set(surname, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    
    static var soicialResults: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.socialResults.rawValue)
        } set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.socialResults.rawValue
            if let surname = newValue {
                print("Value \(surname) was added to key \(key)")
                defaults.set(surname, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    
}
