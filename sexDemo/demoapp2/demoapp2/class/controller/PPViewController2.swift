//
//  PPViewController2.swift
//  PPBadgeViewSwift
//
//  Created by AndyPang on 2017/6/19.
//  Copyright © 2017年 AndyPang. All rights reserved.
//

import UIKit
import MJRefresh

class PPViewController2: UIViewController,UITableViewDelegate, UITableViewDataSource {
    //表格
    var tableView:UITableView!
    var items:[String]!
    // 顶部刷新
    let header = MJRefreshNormalHeader()
    let footer = MJRefreshAutoNormalFooter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //随机生成一些初始化数据
        refreshItemData()
        
        self.navigationItem.title = "列表"
        // Do any additional setup after loading the view.
        //创建表视图
        self.tableView = UITableView(frame: self.view.frame, style:.plain)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        //创建一个重用的单元格
        self.tableView!.register(UITableViewCell.self,
                                 forCellReuseIdentifier: "Cell")
        self.view.addSubview(self.tableView!)

        //下拉刷新相关设置
        header.setRefreshingTarget(self, refreshingAction:
            #selector(headerRefresh))

        self.tableView!.mj_header = header
        
        footer.setRefreshingTarget(self, refreshingAction: #selector(footerMore))
        self.tableView!.mj_footer = footer
        
    }
    
    @objc func headerRefresh() {
        print("下拉刷新.")
        sleep(2)
        //重现生成数据
        refreshItemData()
        //重现加载表格数据
        self.tableView!.reloadData()
        //结束刷新
        self.tableView!.mj_header.endRefreshing()
    }
    
    @objc func footerMore() {
        print("上啦更多.")
        sleep(2)
        
        //结束刷新
        self.tableView!.mj_footer.endRefreshing()
        
        for _ in 0...9 {
            items.append("条目\(Int(arc4random()%100))")
        }
        
        //重现加载表格数据
        self.tableView!.reloadData()
        
        if items.count>30 {
            footer.endRefreshingWithNoMoreData()
        }
    }
    
    //初始化数据
    func refreshItemData() {
        items = []
        for _ in 0...9 {
            items.append("条目\(Int(arc4random()%100))")
        }
    }
    
    //在本例中，只有一个分区
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //返回表格行数（也就是返回控件数）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    //创建各单元显示内容(创建参数indexPath指定的单元）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            //为了提供表格显示性能，已创建完成的单元需重复使用
            let identify:String = "Cell"
            //同一形式的单元格重复使用，在声明时已注册
            let cell = tableView.dequeueReusableCell(withIdentifier: identify,
                                                     for: indexPath)
            cell.accessoryType = .disclosureIndicator
            cell.textLabel?.text = self.items[indexPath.row]
            return cell
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
