//
//  ViewController.swift
//  vrapp
//  ViewController主要用于处理视图View
//  Created by 谭世涛 on 16/8/26.
//  Copyright © 2016年 sam. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ENSideMenuDelegate {
    
    let anr = AppNetRequest()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSLog("测试一下，当视图加载后出现这个提示");
        anr.testRequest();
        self.sideMenuController()?.sideMenu?.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toggletBtn(sender: AnyObject) {
        toggleSideMenuView()
    }
    // MARK: - ENSideMenu Delegate
    func sideMenuWillOpen() {
        print("sideMenuWillOpen")
    }
    
    func sideMenuWillClose() {
        print("sideMenuWillClose")
    }
    
    func sideMenuShouldOpenSideMenu() -> Bool {
        print("sideMenuShouldOpenSideMenu")
        return true
    }
    
    func sideMenuDidClose() {
        print("sideMenuDidClose")
    }
    
    func sideMenuDidOpen() {
        print("sideMenuDidOpen")
    }

}

