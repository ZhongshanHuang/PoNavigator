//
//  ProfitViewController.swift
//  PoNavigationRouter
//
//  Created by 黄中山 on 2020/5/13.
//  Copyright © 2020 potato. All rights reserved.
//

import UIKit

class ProfitViewController: UIViewController {

    var keyValuePairs: [String: Any]?
    
    var ctx: Any?
    
    private lazy var contentsLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.textColor = .red
        label.numberOfLines = 0
        label.textAlignment = .center
        label.frame = self.view.bounds
        self.view.addSubview(label)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        title = self.description
        
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(tapHandler(_:)))
        doubleTap.numberOfTapsRequired = 2;
        view.addGestureRecognizer(doubleTap)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        var contents = ""
        if let keyValuePairs = keyValuePairs {
            contents += "Key Value Pairs\n"
            for (key, value) in keyValuePairs {
                contents += "\(key): \(value)\n"
            }
        }
        
        if let ctx = ctx {
            contents += "Contex\n"
            contents += "\(ctx)"
        }
        
        contentsLabel.text = contents
    }
    
    @objc
    private func tapHandler(_ gesture: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
}

