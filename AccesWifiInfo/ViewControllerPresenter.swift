//
//  ViewControllerPresenter.swift
//  AccesWifiInfo
//
//  Created by Ashish Awasthi on 12/12/19.
//  Copyright © 2019 Tanuja Awasthi. All rights reserved.
//

import UIKit
import SystemConfiguration.CaptiveNetwork

// https://medium.com/better-programming/how-to-access-wifi-ssid-on-ios-13-using-swift-40c4bba3c81d

class ViewControllerPresenter: NSObject {
    
    override init() {
        super.init()
    }
    func getWiFiSsid() -> String? {
        var ssid: String?
        if let interfaces = CNCopySupportedInterfaces() as NSArray? {
            for interface in interfaces {
                if let interfaceInfo = CNCopyCurrentNetworkInfo(interface as! CFString) as NSDictionary? {
                    ssid = interfaceInfo[kCNNetworkInfoKeySSID as String] as? String
                    break
                }
            }
        }
        return ssid
    }
}
