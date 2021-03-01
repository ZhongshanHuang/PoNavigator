//
//  ProfitModulRouters.swift
//  PoNavigationRouter
//
//  Created by 黄中山 on 2020/5/13.
//  Copyright © 2020 potato. All rights reserved.
//

import UIKit
import PoNavigator

struct ProfitModulRouters {
    static let pattern: PoNavigator.Pattern = "myapp://profit"
    
    static func goProfitScene(forms: Parameters?, ctx: PoNavigator.Context?) -> UIViewController {
        let profitVC = ProfitViewController()
        profitVC.keyValuePairs = forms?.all
        profitVC.ctx = ctx
        return profitVC
    }
}
