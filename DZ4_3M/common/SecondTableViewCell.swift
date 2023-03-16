//
//  SecondTableViewCell.swift
//  DZ4_3M
//
//  Created by Nurlan Seitov on 3/3/23.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

   
    @IBOutlet weak var imageViewCell: UIImageView!
    
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelItem: UILabel!
    
    public func initUI(type: String, count: Int, imageName: String) {
        labelName.text = type
        labelItem.text = String(count) + " Items"
        imageViewCell.image = UIImage(named: imageName)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
