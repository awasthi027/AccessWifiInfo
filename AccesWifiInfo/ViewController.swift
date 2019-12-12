//
//  ViewController.swift
//  AccesWifiInfo
//
//  Created by Ashish Awasthi on 12/12/19.
//  Copyright © 2019 Tanuja Awasthi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wifiNameLbl: UILabel!
    let presenter: ViewControllerPresenter = ViewControllerPresenter()
    override func viewDidLoad() {
        super.viewDidLoad()
        if let item =  presenter.getWiFiSsid() {
          wifiNameLbl.text = item
        }
       
        // Do any additional setup after loading the view.
    }


}

