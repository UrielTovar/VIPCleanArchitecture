//
//  AppDelegate.swift
//  CleanArchItecture
//
//  Created by Uriel Tovar on 13/04/20.
//  Copyright © 2020 Uriel Tovar. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.makeKeyAndVisible()
    
    let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as UIViewController
    //let listmovieView = ListMoviesView(nibName: "ListMoviesView", bundle: nil)
    let navController = UINavigationController(rootViewController: viewController) // Integrate navigation controller programmatically if you want
    navController.isNavigationBarHidden = true;
    window?.rootViewController = navController
    return true
  }
  
  
}

