//
//  AppDelegate.swift
//  UIChallenge
//
//  Created by taehy.k on 2021/09/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        let naviVC = UINavigationController(rootViewController: KakaoNoticeViewController())
        window.rootViewController = naviVC
        window.makeKeyAndVisible()
        self.window = window
        return true
    }
}
