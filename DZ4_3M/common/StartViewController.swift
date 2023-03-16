//
//  StartViewController.swift
//  DZ4_3M
//
//  Created by Nurlan Seitov on 4/3/23.
//

import UIKit

class StartViewController: UIViewController {
    
    private let cellID = "cell"
    
    @IBOutlet weak var tableView: UITableView!
    
    var products: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Commercial Board"
        view.backgroundColor = .systemGray6
               tableView.dataSource = self
                tableView.register(UINib(nibName: "SecondTableViewCell", bundle: nil), forCellReuseIdentifier: cellID)
               tableView.delegate = self
                initData()
    }
    
    public func initData(){
//        products.append(Product(name: "Furniture", item: "785 items", image: "mebel1"))
//        products.append(Product(name: "Kitchenware", item: "645 items", image: "mebel2"))
//        products.append(Product(name: "Reading Table", item: "inventory", image: "mebel3"))
        
        
    products = [ Product(id: 0, type: "Furniture", count: 785,
                         details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                            roomType: "Office, Living Room",
                                            color: .yellow , material: "Textile, Velvet, Cotton",
                                            dimensions: "25.6 * 31.5 * 37.4 inches",
                                                 weight: "20.3 Pounds", star: 1, price: "230"),
                         image: "mebel2" ),
           Product(id: 0, type: "KitchenWare", count: 751,
                   details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                           roomType: "Office, Living Room",
                                           color: .yellow , material: "Textile, Velvet, Cotton",
                                           dimensions: "25.6 * 31.5 * 37.4 inches",
                                           weight: "20.3 Pounds", star: 2, price: "235"),
                   image: "bytteh1"),
           Product(id: 0, type: "Reading Table", count: 721,
                   details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                           roomType: "Office, Living Room",
                                           color: .yellow , material: "Textile, Velvet, Cotton",
                                           dimensions: "25.6 * 31.5 * 37.4 inches",
                                           weight: "20.3 Pounds", star: 3, price: "240"),
                   image: "mebel1"),
           Product(id: 0, type: "Kitchen", count: 711,
                   details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                           roomType: "Office, Living Room",
                                           color: .yellow , material: "Textile, Velvet, Cotton",
                                           dimensions: "25.6 * 31.5 * 37.4 inches",
                                           weight: "20.3 Pounds", star: 4, price: "250"),
                   image: "kitchen1"),
           Product(id: 0, type: "Kitchen", count: 701,
                   details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                           roomType: "Office, Living Room",
                                           color: .yellow , material: "Textile, Velvet, Cotton",
                                           dimensions: "25.6 * 31.5 * 37.4 inches",
                                           weight: "20.3 Pounds", star: 5, price: "260"),
                   image: "kitchen2")
        ]



        
    }
}
    
extension StartViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! SecondTableViewCell
        
        cell.initUI(type: products[indexPath.row].type,
                    count: products[indexPath.row].count,
                    imageName: products[indexPath.row].image)
        cell.imageViewCell.layer.cornerRadius = 15
        cell.imageViewCell.layer.borderWidth = 2
        cell.imageViewCell.layer.borderColor = UIColor.gray.cgColor
        cell.imageViewCell.clipsToBounds = true
        return cell
    }
    
        
    }
    
extension StartViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        250
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let threeVC = ThirdViewController()
        self.navigationController?.pushViewController(threeVC, animated: true)
        threeVC.imagethree = products[indexPath.row].image
        threeVC.nameAboc = "\(products[indexPath.row].details.name)"
        threeVC.nameRoom = "\(products[indexPath.row].details.roomType)"
        threeVC.namePrice = "\(products[indexPath.row].details.price)"
      //  threeVC.nameColor = "\(products[indexPath.row].details.Color)"
        threeVC.nameMater = "\(products[indexPath.row].details.material)"
        threeVC.nameDimen = "\(products[indexPath.row].details.dimensions)"
        threeVC.nameWeig = "\(products[indexPath.row].details.weight)"
        threeVC.nameStar = "\(products[indexPath.row].details.star)"
        
        threeVC.r = indexPath.row
       // print(indexPath.row)
        
    }
}
 

