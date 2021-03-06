//
//  AppDelegate.swift
//  Bluetooth-Peripheral-Scanner
//
//  Created by Admin on 8/8/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var dependencies: Dependencies?
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        start()
        return true
    }

}

// MARK: - Start
fileprivate extension AppDelegate {
    
    func start() {
        /// Initialize  Dependencies
        self.dependencies = initializeDependencies()
        /// Setup Window
        window = UIWindow()
        /// Theme Style Default is Light
        if #available(iOS 13.0, *) {
            window?.overrideUserInterfaceStyle = .light
        } else {
            // Fallback on earlier versions
        }
        window?.backgroundColor = .white
        window?.rootViewController = RootViewController.rootVC
        window?.makeKeyAndVisible()
    }
    
}

// MARK: - Initialize Dependencies
fileprivate extension AppDelegate {
    
    func initializeDependencies() -> Dependencies {
        let bluetoothService: BluetoothService = BPSBluetoothService.init()
        return Dependencies.init(bluetoothService: bluetoothService)
    }
    
}
