//
//  PPViewController1.swift
//  PPBadgeViewSwift
//
//  Created by AndyPang on 2017/6/19.
//  Copyright © 2017年 AndyPang. All rights reserved.
//

import UIKit
import Alamofire

class PPViewController1: UIViewController {
    
    @IBOutlet weak var showLable: UILabel!
    @IBOutlet weak var showImage: UIImageView!
    
    @IBAction func getAction() {
        print("log")
        let url = "https://www.sojson.com/open/api/weather/json.shtml?city=北京"
        let urlString = "http://app.u17.com/v3/appV3_3/ios/phone/rank/list"
        
        Alamofire.request(urlString, method: .post, encoding: JSONEncoding.default)
            .downloadProgress(queue: DispatchQueue.global(qos: .utility)) { progress in
                print("Progress: \(progress.fractionCompleted)")
            }
            .validate { request, response, data in
                // Custom evaluation closure now includes data (allows you to parse data to dig out error messages if necessary)
                return .success
            }
            .responseJSON { response in
                debugPrint(response)
        }
        
        
    }
    
    @IBAction func postAction() {
        
        NetworkTools.POST(url: "http://app.u17.com/v3/appV3_3/ios/phone/rank/list", params: nil, success: { (json) in
            let decoder = JSONDecoder()
            let model = try? decoder.decode(DMModel.self, from: json)
            print(model?.code)
            print(model?.data.message)
            
        }) { (state_code, message) in
            
        }
        
    }
    
    @IBAction func downAction() {
        let urlString = "https://qd.myapp.com/myapp/qqteam/AndroidQQ/mobileqq_android.apk"
        let fileURL: URL
        let destination: DownloadRequest.DownloadFileDestination = { fileURL, _ in
            return (fileURL, [.createIntermediateDirectories, .removePreviousFile])
        }
//        let parameters: Parameters = ["foo": "bar"]
        
        Alamofire.download(urlString, method: .get, encoding: JSONEncoding.default, to: destination)
            .downloadProgress(queue: DispatchQueue.global(qos: .utility)) { progress in
                print("Progress: \(progress.fractionCompleted)")
            }
            .validate { request, response, temporaryURL, destinationURL in
                // Custom evaluation closure now includes file URLs (allows you to parse out error messages if necessary)
                return .success
            }
            .responseJSON { response in
                debugPrint(response)
                print(response.temporaryURL)
                print(response.destinationURL)
        }
        
        
    }
    
    @IBAction func showImageAction() {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "首页"
  
        /**
         iOS11系统下 -(void)viewDidLoad中获取不到UIBarButtonItem的实例,demo为了演示效果做了0.001s的延时操作,
         在实际开发中,badge的显示是在网络请求成功/推送之后,所以不用担心获取不到UIBarButtonItem添加不了badge
         */
        if (UIDevice.current.systemVersion as NSString).doubleValue >= 11.0 {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.01, execute: {
//                self.setupBadges()
            })
            return
        }
        
    }
  
}


