//
//  CustomTableViewCell.swift
//  SwiftTableViewTest
//
//  Created by 马浩哲 on 16/11/28.
//  Copyright © 2016年 junanxin. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    var iconImageView :UIImageView!
    var titleLabel :UILabel!
    var subTitleLabel :UILabel!
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: UITableViewCellStyle.default, reuseIdentifier: reuseIdentifier)
        self.createUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func createUI() {
        iconImageView = UIImageView.init(frame: CGRect.init(x:10,y:7,width:35,height:35))
        iconImageView.layer.cornerRadius = 35/2.0
        iconImageView.backgroundColor = UIColor.red
        iconImageView.layer.masksToBounds = true
        
        self.contentView.addSubview(iconImageView)
        
        titleLabel = UILabel.init(frame: CGRect.init(x:50,y:2,width:150,height:30))
        titleLabel.font = UIFont.systemFont(ofSize: 15)
        self.contentView.addSubview(titleLabel)
        
        subTitleLabel = UILabel.init(frame: CGRect.init(x: 200, y: 36, width: 100, height: 10))
        subTitleLabel.font = UIFont.systemFont(ofSize: 13)
        subTitleLabel.textAlignment = NSTextAlignment.right
        self.contentView.addSubview(subTitleLabel)
    }

}
