//
//  SceneDelegate.swift
//  FakeProduct
//
//  Created by suraj kumar on 22/03/23.
//

import UIKit
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let productListVc = ProductListVC()
        productListVc.title = "Cloths Market"
        let nav = UINavigationController(rootViewController: productListVc)
        nav.navigationBar.prefersLargeTitles = true

        nav.navigationItem.largeTitleDisplayMode = .automatic
        window.rootViewController = nav
        self.window = window
        window.makeKeyAndVisible()
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
       
    }


}

