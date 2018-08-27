//
//  AddViewController.swift
//  demoapp1
//
//  Created by shinaimeng on 2018/8/24.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var namefield: UITextField!
    
    @IBOutlet weak var moblefield: UITextField!
    
    @IBOutlet weak var sureBtn: UIButton!
    @IBAction func quit(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func saveOnclicked(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onChanged(_ sender: Any) {
        sureBtn.isEnabled = (!(namefield.text?.isEmpty)!) && (!(moblefield.text?.isEmpty)!)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
