//
//  AppDelegate.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 24.12.2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //запускаем функцию
        setupAppearance()
        return true
    }
    
    //изменим цвет NavigationBar
    func setupAppearance() {
        let appearance = UINavigationBar.appearance()
        appearance.barTintColor = .blue
        //цвет кнопок
        appearance.tintColor = .green
        // меняем цвет текста
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.purple]
        
        
        //переделаем все лейблы, если в скобках ничего не указывать - применится ко всем лейблам в приложении
        //если делаем запись в скобках - меняем шрифты для конкретного класса
         let labelAppearance = UILabel.appearance(whenContainedInInstancesOf: [LoginViewController.self])
        // зададим шрифт
        labelAppearance.font = .italicSystemFont(ofSize: 16)
        labelAppearance.textColor = .magenta
    }
    
    
    

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

