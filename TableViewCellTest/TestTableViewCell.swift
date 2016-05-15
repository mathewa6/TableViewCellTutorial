//
//  TestTableViewCell.swift
//  TableViewCellTest
//
//  Created by Adi Mathew on 5/14/16.
//  Copyright © 2016 BumBum & Co. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    var altLabel: UILabel
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override func layoutSubviews() {
         self.altLabel.frame = self.contentView.bounds
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        altLabel = UILabel()
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.yellowColor()
        self.contentView.addSubview(altLabel)
    }

    required init?(coder aDecoder: NSCoder) {
        altLabel = UILabel()
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.redColor()
        self.contentView.addSubview(altLabel)
    }
}
