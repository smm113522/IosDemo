//
//  LoginViewController.swift
//  MailList
//
//  Created by shinaimeng on 2018/8/23.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var namefield: UITextField!
    @IBOutlet weak var psdfield: UITextField!
    @IBOutlet weak var onswitch: UISwitch!
    @IBOutlet weak var lognbtn: UIButton!
    var HUD : MBProgressHUD?
    
    @IBAction func nameChanged(_ sender: Any) {
        if !(namefield.text!.isEmpty) && !(psdfield.text!.isEmpty) {
            lognbtn.isEnabled = true
        }else{
            lognbtn.isEnabled = false
        }
    }

    
    @IBAction func loginOnclcked(_ sender: Any) {
        let name = namefield.text
        let psd = psdfield.text
       
        if namefield.text!.isEmpty && psdfield.text!.isEmpty {
            print("empty")
            return
        }else{
            if name != "smm"{
                print("用户名错误")
                showTomast(txt: "用户名错误")
                return
            }
            if psd != "qq"{
                print("密码错误")
                showTomast(txt: "密码错误")
                return
            }
            showLoading()
            self.performSegue(withIdentifier: "toindex", sender: nil)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        psdfield.isSecureTextEntry = true
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
    // 跳转之前 执行
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let con = segue.destination;
        con.title = "  \(String(describing: namefield.text))的联系人列表"
        
        
    }
    

}
