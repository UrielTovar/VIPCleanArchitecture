//
//  ViewControllerRouter.swift
//  CleanArchItecture
//
//  Created by Uriel Tovar on 13/04/20.
//  Copyright © 2020 Uriel Tovar. All rights reserved.
//

import UIKit

protocol ViewControlerRouterDelegate {
    func navigationRouter(viewController: UINavigationController)
}

class ViewControllerRouter: NSObject {

    // MARK: Navigation
    func navigationRouter(viewController: UINavigationController) {
//        let vc = MovieDetailViewController(nibName: "MovieDetailViewController", bundle: nil)
//        viewController.pushViewController(vc, animated: true)
    }
}
