//
//  EditViewController.swift
//  demoapp1
//
//  Created by shinaimeng on 2018/8/24.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
 
    @IBOutlet weak var namefield: UITextField!
    
    @IBOutlet weak var moblefield: UITextField!
    weak var delegate:PeopleDelegate?
    
    @IBOutlet weak var editbt: UIBarButtonItem!
    @IBAction func onChange(_ sender: Any) {
        sureBtn.isEnabled = (!(namefield.text?.isEmpty)!) && (!(moblefield.text?.isEmpty)!)
    }
    @IBOutlet weak var sureBtn: UIButton!
    @IBAction func quitOnclicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func editOnclicked(_ sender: Any) {
        if namefield.isEnabled {
            namefield.isEnabled = false
            moblefield.isEnabled = false
            self.navigationItem.title = "编辑联系人"
            editbt.title = "编辑"
            sureBtn.isHidden = true
        }else {
            namefield.isEnabled = true
            moblefield.isEnabled = true
            self.navigationItem.title = "查看联系人"
            sureBtn.isHidden = false
            editbt.title = "取消"
        }
        
    }
    @IBAction func saveOnclicked(_ sender: Any) {
        
        people?.name = namefield.text!
        people?.mobile = moblefield.text!
        
        self.delegate?.dosomeIng(path:path,people: people!)
        self.dismiss(animated: true, completion: nil)
    }
    var path:Int = -1;
    var people : People? = nil;
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sureBtn.isHidden = true
        
        namefield.text = people?.name
        moblefield.text = people?.mobile
        
        namefield.isEnabled = false
        moblefield.isEnabled = false
        
        self.title = "查看联系人"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
