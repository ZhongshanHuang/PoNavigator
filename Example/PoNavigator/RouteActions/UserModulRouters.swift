//
//  UserModulRouters.swift
//  PoNavigationRouter
//
//  Created by 黄中山 on 2020/5/13.
//  Copyright © 2020 potato. All rights reserved.
//

import UIKit
import PoNavigator

struct UserModulRouters {
    static let pattern: PoNavigator.Pattern = "myapp://user"
    
    static func goUserScene(forms: Parameters?, ctx: PoNavigator.Context?) -> UIViewController {
        let userVC = UserViewController()
        userVC.keyValuePairs = forms?.all
        userVC.ctx = ctx
        return userVC
    }
}
