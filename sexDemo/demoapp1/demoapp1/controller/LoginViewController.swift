//
//  LoginViewController.swift
//  demoapp1
//
//  Created by shinaimeng on 2018/8/24.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    

    @IBOutlet weak var namefield: UITextField!
    @IBOutlet weak var psdfield: UITextField!
    
    @IBOutlet weak var uisave: UISwitch!
    
    @IBOutlet weak var loginBtn: UIButton!
    var HUD : MBProgressHUD?
    
    @IBAction func loginOnclcked(_ sender: Any) {
        if namefield.text != "smm" {
            showTomast(txt: "用户名不正确")
            return
        }
        if psdfield.text != "123"{
            showTomast(txt: "密码不正确")
            return
        }
        showLoading()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
//            self.showTomast(txt: "登录成功")
            if self.uisave.isOn {
                UserDefaults.standard.setValue(self.namefield.text!,forKey: "name")
                UserDefaults.standard.setValue(self.psdfield.text!,forKey: "password")
            }else{
                UserDefaults.standard.setValue("",forKey: "name")
                UserDefaults.standard.setValue("",forKey: "password")
            }
            UserDefaults.standard.setValue(self.uisave.isOn,forKey: "save")
//            设置同步
            UserDefaults.standard.synchronize()
            self.performSegue(withIdentifier: "toindex", sender: nil)
        }
       
    }
    
    
    @IBAction func onChanged(_ sender: Any) {
        loginBtn.isEnabled = (!(namefield.text?.isEmpty)! && !(psdfield.text?.isEmpty)!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        psdfield.isSecureTextEntry = true
        self.namefield.becomeFirstResponder()
        // Do any additional setup after loading the view.
        let name = UserDefaults.standard.value(forKey: "name") as! String!
        if !(name!.isEmpty) {
            self.namefield.text = name
            self.loginBtn.isEnabled = true
        }
        
        self.psdfield.text = UserDefaults.standard.value(forKey: "password")as! String!
        let issave = UserDefaults.standard.bool(forKey: "save")
        if issave {
            uisave.isOn = true
        }else {
            uisave.isOn = false
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func showTomast(txt:String)  {
        HUD = MBProgressHUD(view: self.view)
        self.view.addSubview(HUD!)
        HUD!.label.text = txt
        HUD!.mode = MBProgressHUDMode.text
        HUD!.show(animated: true)
        HUD!.hide(animated:true, afterDelay: 1)
    }
    
    func showLoading()  {
        HUD = MBProgressHUD(view: self.view)
        self.view.addSubview(HUD!)
        HUD!.label.text = "登录中..."
        //        HUD!.mode = MBProgressHUDMode.text
        HUD!.show(animated: true)
        HUD!.hide(animated:true, afterDelay: 3)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let controller = segue.destination
        controller.navigationItem.title = "\(namefield.text)的通讯录联系人"
    }
    

}
