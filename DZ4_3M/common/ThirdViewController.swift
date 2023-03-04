//
//  ThirdViewController.swift
//  DZ4_3M
//
//  Created by Nurlan Seitov on 3/3/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    public var name1: String?
    public var name2: String?
    public var Imagethree: String = ""
    public var r: Int = 0
    
    
    
    @IBOutlet weak var imageViewThree: UIImageView!
    
    
    @IBOutlet weak var labelNameThree: UILabel!
    
    
    @IBOutlet weak var label2: UILabel!
    
    @IBAction func buttonBuyThree(_ sender: Any) {
        
        
        dismiss(animated: true, completion: nil)
        navigationController?.popToRootViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewThree.layer.cornerRadius = 15
        imageViewThree.layer.borderWidth = 2
        imageViewThree.layer.borderColor = UIColor.gray.cgColor
        imageViewThree.clipsToBounds = true
        switch r {
        case 0: imageViewThree.image = UIImage(named: "kreslo1")
        case 1: imageViewThree.image = UIImage(named: "kreslo2")
        case 2: imageViewThree.image = UIImage(named: "kreslo3")
        default: print("")
        }
        print(r)
       // imageViewThree.image = UIImage(named: Imagethree)
        labelNameThree.text = name1
        label2.text = name2

    }

}
