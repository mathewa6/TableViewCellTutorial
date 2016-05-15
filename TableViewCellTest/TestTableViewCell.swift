//
//  TestTableViewCell.swift
//  TableViewCellTest
//
//  Created by Adi Mathew on 5/14/16.
//  Copyright © 2016 BumBum & Co. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    @IBOutlet var altLabel: UILabel?
    @IBOutlet var badge: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        /*:
            NOTE: The circle subview in each cell "disappears" when selected
            because tableViewCell sets the backgroundColor of all of it's 
            contentView's subViews to be gray. Since this experiment's view only
            had it's background set, we see it as disappearing.
        */
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        self.backgroundColor = UIColor.yellowColor()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.badge.layer.cornerRadius = self.badge.bounds.height/2
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        self.backgroundColor = UIColor.redColor()
    }
}
