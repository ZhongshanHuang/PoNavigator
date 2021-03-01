//
//  ViewController.swift
//  PoNavigator
//
//  Created by 154427919@qq.com on 03/01/2021.
//  Copyright (c) 2021 154427919@qq.com. All rights reserved.
//

import UIKit
import PoNavigator

class ViewController: UIViewController {
    
    private lazy var tableView = UITableView(frame: .zero, style: .plain)
    private var data = ["push", "present", "present wrapped", "open"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.frame = view.bounds
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            PoNavigator.push(UserModulRouters.pattern + "?name=potato&age=23&weight=55kg", ctx: "I'm context")
        case 1:
            PoNavigator.present(ProfitModulRouters.pattern + "?name=potato&age=23&weight=55kg", ctx: "I'm context")
        case 2:
            PoNavigator.present(ProfitModulRouters.pattern + "?name=potato&age=23&weight=55kg", wrap: UINavigationController.self)
        case 3:
            PoNavigator.open("myapp://alert?title=自我介绍&message=我是小黄豆")
        default:
            break
        }
    }
}


