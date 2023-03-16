//  Product.swift
//  DZ4_3M
//
//  Created by Nurlan Seitov on 4/3/23.
//

import UIKit

//struct Product {
//    let name: String
//    let item: String
//    let image: String
//}


struct Product {
    let id: Int
    let type: String
    let count: Int
    let details: ProductDetails
    let image: String
}

struct ProductDetails {
    let name: String
    let roomType: String
    let color: UIColor
    let material: String
    let dimensions: String
    let weight: String
    let star: Int
    let price: String
}

enum Color {
    case yellow
    case blue
    case white
    case black
    case red
    case orange
}
