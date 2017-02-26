//
//  ViewController.swift
//  iOSSwiftLab4
//
//  Created by Gates on 2017/2/25.
//  Copyright © 2017年 Gates. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn1Device40: UIButton!
    @IBOutlet weak var btn2Device40: UIButton!
    @IBOutlet weak var btn3Device40: UIButton!
    
    @IBOutlet weak var btn1Device44: UIButton!
    @IBOutlet weak var btn2Device44: UIButton!
    @IBOutlet weak var btn3Device44: UIButton!
    
    @IBOutlet weak var btn1Device55: UIButton!
    @IBOutlet weak var btn2Device55: UIButton!
    @IBOutlet weak var btn3Device55: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let deviceString = platform()
//        let deviceNativeScale = UIScreen.main.nativeScale
//        print("deviceString - \(deviceString), deviceNativeScale - \(deviceNativeScale)")
//        if (deviceString == "iPhone 6" || deviceString == "iPhone 6s" || deviceString == "iPhone 7") {
//            if (deviceNativeScale == 2.343750) { //放大模式
//                btn1Device40.isHidden = false
//                btn2Device40.isHidden = false
//                btn3Device40.isHidden = false
//                
//                btn1Device44.isHidden = true
//                btn2Device44.isHidden = true
//                btn3Device44.isHidden = true
//                
//                btn1Device55.isHidden = true
//                btn2Device55.isHidden = true
//                btn3Device55.isHidden = true
//            } else { //標準模式
//                btn1Device40.isHidden = true
//                btn2Device40.isHidden = true
//                btn3Device40.isHidden = true
//                
//                btn1Device44.isHidden = false
//                btn2Device44.isHidden = false
//                btn3Device44.isHidden = false
//                
//                btn1Device55.isHidden = true
//                btn2Device55.isHidden = true
//                btn3Device55.isHidden = true
//            }
//        } else if (deviceString == "iPhone 6 Plus" || deviceString == "iPhone 6s Plus" || deviceString == "iPhone 7 Plus") {
//            if (deviceNativeScale == 2.88) { //放大模式
//                btn1Device40.isHidden = true
//                btn2Device40.isHidden = true
//                btn3Device40.isHidden = true
//                
//                btn1Device44.isHidden = false
//                btn2Device44.isHidden = false
//                btn3Device44.isHidden = false
//                
//                btn1Device55.isHidden = true
//                btn2Device55.isHidden = true
//                btn3Device55.isHidden = true
//            } else { //標準模式
//                btn1Device40.isHidden = true
//                btn2Device40.isHidden = true
//                btn3Device40.isHidden = true
//                
//                btn1Device44.isHidden = true
//                btn2Device44.isHidden = true
//                btn3Device44.isHidden = true
//                
//                btn1Device55.isHidden = false
//                btn2Device55.isHidden = false
//                btn3Device55.isHidden = false
//            }
//        } else {
//            if (deviceNativeScale == 1) {
//                btn1Device40.isHidden = false
//                btn2Device40.isHidden = false
//                btn3Device40.isHidden = false
//                
//                btn1Device44.isHidden = true
//                btn2Device44.isHidden = true
//                btn3Device44.isHidden = true
//                
//                btn1Device55.isHidden = true
//                btn2Device55.isHidden = true
//                btn3Device55.isHidden = true
//            } else if (deviceNativeScale == 2) {
//                btn1Device40.isHidden = true
//                btn2Device40.isHidden = true
//                btn3Device40.isHidden = true
//                
//                btn1Device44.isHidden = false
//                btn2Device44.isHidden = false
//                btn3Device44.isHidden = false
//                
//                btn1Device55.isHidden = true
//                btn2Device55.isHidden = true
//                btn3Device55.isHidden = true
//            } else if (deviceNativeScale == 3) {
//                btn1Device40.isHidden = true
//                btn2Device40.isHidden = true
//                btn3Device40.isHidden = true
//                
//                btn1Device44.isHidden = true
//                btn2Device44.isHidden = true
//                btn3Device44.isHidden = true
//                
//                btn1Device55.isHidden = false
//                btn2Device55.isHidden = false
//                btn3Device55.isHidden = false
//            }
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func platform() -> String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineString = String(bytes: Data(bytes: &systemInfo.machine, count: Int(_SYS_NAMELEN)), encoding: .ascii)!.trimmingCharacters(in: .controlCharacters)
        
        switch machineString {
            case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
            case "iPhone4,1":                               return "iPhone 4s"
            case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
            case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
            case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
            case "iPhone7,2":                               return "iPhone 6"
            case "iPhone7,1":                               return "iPhone 6 Plus"
            case "iPhone8,1":                               return "iPhone 6s"
            case "iPhone8,2":                               return "iPhone 6s Plus"
            case "iPhone8,4":                               return "iPhone SE"
            case "iPhone9,1", "iPhone9,3":                  return "iPhone 7";
            case "iPhone9,2", "iPhone9,4":                  return "iPhone 7 Plus"
            default:                                        return machineString
        }
    }
}


