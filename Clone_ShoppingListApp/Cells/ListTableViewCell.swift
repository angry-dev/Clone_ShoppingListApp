//
//  ListTableViewCell.swift
//  Clone_ShoppingListApp
//
//  Created by 전혜성 on 2022/06/22.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var thingTextField: UITextField!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.checkButton.setImage(UIImage(named: "noncheck"), for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
