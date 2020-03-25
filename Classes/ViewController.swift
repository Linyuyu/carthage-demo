//
//  ViewController.swift
//  CarthageDemo
//
//  Created by Lin YuYu on 2020/3/25.
//  Copyright © 2020 Lin YuYu. All rights reserved.
//

import UIKit
import MyFramework

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let testReader = TestReader()
        self.present(testReader, animated: true, completion: nil)
    }
}

