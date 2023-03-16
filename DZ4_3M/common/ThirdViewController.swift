//
//  ThirdViewController.swift
//  DZ4_3M
//
//  Created by Nurlan Seitov on 3/3/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    public var nameAboc: String?
    public var namePrice: String?
    public var nameRoom: String?
   // public var nameColor: Color?
    public var nameMater: String?
    public var nameDimen: String?
    public var nameWeig: String?
    public var nameStar: String?
    
    public var imagethree: String = ""
    public var r: Int = 0
    private var i: Int = 1
    
    
    
    @IBOutlet weak var imageViewThree: UIImageView!
    @IBOutlet weak var labelNameThree: UILabel!
    @IBOutlet weak var labelroom: UILabel!
    @IBOutlet weak var labelcolor: UILabel!
    @IBOutlet weak var labelMaterial: UILabel!
    @IBOutlet weak var labelDimen: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    
    @IBOutlet weak var imageStar1: UIImageView!
    @IBOutlet weak var imageStar2: UIImageView!
    @IBOutlet weak var imageStar3: UIImageView!
    @IBOutlet weak var imageStar4: UIImageView!
    @IBOutlet weak var imageStar5: UIImageView!
    
    @IBOutlet weak var labelInfo: UILabel!
    
    
    @IBAction func buttonMinus(_ sender: Any) {
        if i < 0 || i == 0 {
            i = 1
        } else {
            if i > 1 { i -= 1 }
        }
        labelInfo.text = String(i)
        labelPrice.text = "$ " + String(Int(namePrice ?? "0")! * i)
    }
    
    @IBAction func buttonPlus(_ sender: Any) {
        if i < 0 && i == 0 {
            i = 1
        } else {
            i += 1
        }
        labelInfo.text = String(i)
        labelPrice.text = "$ " + String(Int(namePrice ?? "0")! * i)
    }
    
    
    @IBAction func buttonBuyThree(_ sender: Any) {
        
        
        dismiss(animated: true, completion: nil)
        navigationController?.popToRootViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Product Details"
        imageViewThree.layer.cornerRadius = 15
        imageViewThree.layer.borderWidth = 2
        imageViewThree.layer.borderColor = UIColor.gray.cgColor
        imageViewThree.clipsToBounds = true
        imageViewThree.image = UIImage(named: imagethree)

        labelNameThree.text = nameAboc
        labelPrice.text = "$ " + (namePrice ?? "0")
        labelroom.text = nameRoom
        labelMaterial.text = nameMater
        labelDimen.text = nameDimen
        labelWeight.text = nameWeig
        
        switch (Int((nameStar)!) ?? 0) {
            
        case 1: do { imageStar1.tintColor = .systemYellow
            imageStar2.tintColor = .systemGray5
            imageStar3.tintColor = .systemGray5
            imageStar4.tintColor = .systemGray5
            imageStar5.tintColor = .systemGray5
             }
        case 2: do { imageStar1.tintColor = .systemYellow
            imageStar2.tintColor = .systemYellow
            imageStar3.tintColor = .systemGray5
            imageStar4.tintColor = .systemGray5
            imageStar5.tintColor = .systemGray5
             }
        case 3: do { imageStar1.tintColor = .systemYellow
            imageStar2.tintColor = .systemYellow
            imageStar3.tintColor = .systemYellow
            imageStar4.tintColor = .systemGray5
            imageStar5.tintColor = .systemGray5
             }
        case 4: do { imageStar1.tintColor = .systemYellow
            imageStar2.tintColor = .systemYellow
            imageStar3.tintColor = .systemYellow
            imageStar4.tintColor = .systemYellow
            imageStar5.tintColor = .systemGray5
             }
        case 5: do { imageStar1.tintColor = .systemYellow
            imageStar2.tintColor = .systemYellow
            imageStar3.tintColor = .systemYellow
            imageStar4.tintColor = .systemYellow
            imageStar5.tintColor = .systemYellow
             }
        default: print("Emty")
        }

//        switch nameColor {
//
//        case .none:
//            labelcolor.text = "emty"
//        case .some(.blue):
//            labelcolor.text = "blue"
//        case .some(.white):
//            labelcolor.text = "white"
//        case .some(.red):
//            labelcolor.text = "red"
//        case .some(.orange):
//            labelcolor.text = "orange"
//        case .some(.yellow):
//            labelcolor.text = "yellow"
//        }
    }

}
