//
//  ViewController.swift
//  DottedLineView
//
//  Created by STAR_ZERO on 06/28/2016.
//  Copyright (c) 2016 STAR_ZERO. All rights reserved.
//

import UIKit
import DottedLineView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dottedLineView = DottedLineView(frame: CGRect(x: 0, y: 100, width: view.frame.width, height: 10))
        dottedLineView.lineWidth = 8
        dottedLineView.lineColor = UIColor.blueColor()
        
        view.addSubview(dottedLineView)
    }

}
