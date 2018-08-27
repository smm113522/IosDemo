//
//  IndexTableViewController.swift
//  demoapp1
//
//  Created by shinaimeng on 2018/8/24.
//  Copyright © 2018年 shinaimeng. All rights reserved.
//

import UIKit

class IndexTableViewController: UITableViewController,PeopleDelegate {
    
    var list : NSMutableArray = NSMutableArray();
    
    func dosomeIng(path:Int,people: People) {
        if path == -1 {
            list.add(people)
        }else{
           list.replaceObject(at: path, with: people)
        }
        self.tableView.reloadData()
    }
    
    @IBAction func zhuXiaoOnclcked(_ sender: Any) {
        let alertController = UIAlertController(title: "是否注销", message: "真的要注销吗",
                                                preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
//        有点击事件的
        let archiveAction = UIAlertAction(title: "确定", style: .destructive, handler:  {
            action in
           self.dismiss(animated: true, completion: nil)
        })
        alertController.addAction(cancelAction)
        alertController.addAction(archiveAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        clearExtraLine()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return list.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycall", for: indexPath)
        let people:People = self.list[indexPath.row] as! People
        // Configure the cell...
        cell.textLabel?.text = people.name
        cell.detailTextLabel?.text = people.mobile
        cell.accessoryType = .disclosureIndicator

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */
//    把删除转换为中文
    override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String?{
        return "删除"
    }
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.list.removeObject(at:indexPath.row)
            self.tableView?.deleteRows(at: [indexPath], with:.automatic)
        }
    }
    
    func clearExtraLine(){
        var view = UIView()
        view.backgroundColor = UIColor.clear
        self.tableView.tableFooterView = view
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let conteroller = segue.destination
        if conteroller.isKind(of: AddViewController.classForCoder()) {
            let controllers:AddViewController = conteroller as! AddViewController
            controllers.delegate = self
        }else if conteroller.isKind(of: EditViewController.classForCoder()){
            let controllers:EditViewController = conteroller as! EditViewController
            controllers.delegate = self
            if let selectedItems = tableView!.indexPathsForSelectedRows {
                let people : People = list[selectedItems[0].row] as! People
                controllers.path = selectedItems[0].row
                controllers.people = people
            }
            
        }

    }
    

}
