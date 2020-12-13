//
//  UserSettings.swift
//  TestCase2
//
//  Created by Муслим Курбанов on 13.12.2020.
//

import Foundation

final class UserSettings {
    
    private enum SettingsKeys: String {
        case surname
        case name
        case lastName
        case Class
        case city
        case number
        case email
    }
     
    static var surname: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.surname.rawValue)
        } set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.surname.rawValue
            if let name = newValue {
                print("Value \(name) was added to key \(key)")
                defaults.set(name, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    
    static var name: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.name.rawValue)
        } set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.name.rawValue
            if let surname = newValue {
                print("Value \(surname) was added to key \(key)")
                defaults.set(surname, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    
    static var lastName: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.lastName.rawValue)
        } set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.lastName.rawValue
            if let surname = newValue {
                print("Value \(surname) was added to key \(key)")
                defaults.set(surname, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    
    static var Class: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.Class.rawValue)
        } set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.Class.rawValue
            if let surname = newValue {
                print("Value \(surname) was added to key \(key)")
                defaults.set(surname, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    
    static var city: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.city.rawValue)
        } set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.city.rawValue
            if let surname = newValue {
                print("Value \(surname) was added to key \(key)")
                defaults.set(surname, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    
    static var number: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.number.rawValue)
        } set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.number.rawValue
            if let surname = newValue {
                print("Value \(surname) was added to key \(key)")
                defaults.set(surname, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    
    static var email: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.email.rawValue)
        } set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.email.rawValue
            if let surname = newValue {
                print("Value \(surname) was added to key \(key)")
                defaults.set(surname, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    
}
