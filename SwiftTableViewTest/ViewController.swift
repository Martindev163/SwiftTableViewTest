//
//  ViewController.swift
//  SwiftTableViewTest
//
//  Created by 马浩哲 on 16/11/28.
//  Copyright © 2016年 junanxin. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    var mytableview:UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white
        mytableview = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        mytableview.delegate = self;
        mytableview.dataSource = self;
        mytableview.register(CustomTableViewCell.self, forCellReuseIdentifier: "cellID")
        self.view.addSubview(mytableview)
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Idstring = "cellID"
        let cell = mytableview?.dequeueReusableCell(withIdentifier: Idstring, for: indexPath) as!CustomTableViewCell
        cell.iconImageView.image = UIImage.init(named: "")
        cell.titleLabel.text = "标题：\(indexPath.row)"
        cell.subTitleLabel.text = "副标题：\(indexPath.row)"
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

