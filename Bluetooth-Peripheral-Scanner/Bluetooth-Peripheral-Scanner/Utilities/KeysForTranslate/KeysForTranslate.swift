//
//  KeysForTranslate.swift
//  Bluetooth-Peripheral-Scanner
//
//  Created by Admin on 8/8/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation

enum KeysForTranslate: String {
    case deviceList = "device_List_Key"
    case unknown = "unknown_Key"
    case deviceDetail = "device_Detail_Key"
    case name = "name_Key"
}

// MARK: - Localizable
extension KeysForTranslate: Localizable {
    
    var tableName: String {
        return ""
    }
    
}
