//
//  Constans.swift
//  Flash Chat iOS13
//
//  Created by Alicja Gruca on 20/07/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct K {
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    static let appTitle: String = "⚡️FlashChat"
    static let alertTitle: String = "Alert"
    static let alertButtonTitle: String = "Okey"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}



