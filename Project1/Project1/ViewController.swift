//
//  ViewController.swift
//  Project1
//
//  Created by Abdul chaudhary on 02/07/20.
//  Copyright © 2020 Abdul chaudhary. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl"){
                pictures.append(item)
            }
        }

    }


}

