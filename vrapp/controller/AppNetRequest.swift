//
//  AppNetRequest.swift
//  vrapp
//  AppNetRequest主要用于处理网络请求的各种事件
//  Created by 谭世涛 on 16/9/1.
//  Copyright © 2016年 sam. All rights reserved.
//

import Foundation
import SwiftHTTP
import SwiftyJSON

public class AppNetRequest{
    func testRequest(){
        var params = Dictionary<String, String>()
        params["systype"] = "1"
        params["appversion"] = "1.0.1"
        params["oauth_id"] = "weixintestID"
        do {
            //请求启动接口配置地址
            let opt = try HTTP.GET("http://jdyunvr.applinzi.com/app/onstart", parameters: params)
            opt.start { response in
                if let err = response.error {
                    NSLog("error: \(err.localizedDescription)")
                    return //also notify app of failure as needed
                }
                let apiData = response.data
                let json=JSON(data: apiData);
                NSLog(String(json["title"]))
            }
        } catch let error {
            NSLog("got an error creating the request: \(error)")
        }
    }
}


