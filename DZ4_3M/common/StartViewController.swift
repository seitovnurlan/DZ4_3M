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
        
        view.backgroundColor = .cyan
               tableView.dataSource = self
                tableView.register(UINib(nibName: "SecondTableViewCell", bundle: nil), forCellReuseIdentifier: cellID)
               tableView.delegate = self
                initData()
    }
    
    public func initData(){
        products.append(Product(name: "Furniture", item: "785 items", image: "mebel1"))
        products.append(Product(name: "Kitchenware", item: "645 items", image: "mebel2"))
        products.append(Product(name: "Reading Table", item: "inventory", image: "mebel3"))
        
        
        //        let productList: [Product] = [
        //            Product(id: 0, type: "Furniture", count: 785,
        //                    details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
        //                                            roomType: "Office, Living Room",
        //                                            color: .yellow , material: "Textile, Velvet, Cotton",
        //                                            dimensions: "25.6 * 31.5 * 37.4 inches",
        //                                            weight: "20.3 Pounds", star: 5, price: "230 $") ),
        //           Product(id: 0, type: "KitchenWare", count: 7251,
        //                   details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
        //                                           roomType: "Office, Living Room",
        //                                           color: .yellow , material: "Textile, Velvet, Cotton",
        //                                           dimensions: "25.6 * 31.5 * 37.4 inches",
        //                                           weight: "20.3 Pounds", star: 5, price: "230 $") ),
        //           Product(id: 0, type: "Reading Table", count: 7251,
        //                   details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
        //                                           roomType: "Office, Living Room",
        //                                           color: .yellow , material: "Textile, Velvet, Cotton",
        //                                           dimensions: "25.6 * 31.5 * 37.4 inches",
        //                                           weight: "20.3 Pounds", star: 5, price: "230 $") ),
        //           Product(id: 0, type: "Kitchen", count: 7251,
        //                   details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
        //                                           roomType: "Office, Living Room",
        //                                           color: .yellow , material: "Textile, Velvet, Cotton",
        //                                           dimensions: "25.6 * 31.5 * 37.4 inches",
        //                                           weight: "20.3 Pounds", star: 5, price: "230 $") ),
        //           Product(id: 0, type: "Kitchen", count: 7251,
        //                   details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
        //                                           roomType: "Office, Living Room",
        //                                           color: .yellow , material: "Textile, Velvet, Cotton",
        //                                           dimensions: "25.6 * 31.5 * 37.4 inches",
        //                                           weight: "20.3 Pounds", star: 5, price: "230 $") )
        //        ]
        
        
        
        
    }
}
    
extension StartViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! SecondTableViewCell
        
        cell.initUI(name: products[indexPath.row].name, nameItem: products[indexPath.row].item, imageName: products[indexPath.row].image)
        cell.imageViewCell.layer.cornerRadius = 15
        cell.imageViewCell.layer.borderWidth = 2
        cell.imageViewCell.layer.borderColor = UIColor.gray.cgColor
        cell.imageViewCell.clipsToBounds = true
        return cell
    }
    
        
    }
    
extension StartViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        260
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let threeVC = ThirdViewController()
        self.navigationController?.pushViewController(threeVC, animated: true)
        threeVC.Imagethree = products[indexPath.row].image
        threeVC.name1 = "\(products[indexPath.row].name)"
        threeVC.name2 = "\(products[indexPath.row].item)"
        threeVC.r = indexPath.row
       // print(indexPath.row)
        
    }
}
 

