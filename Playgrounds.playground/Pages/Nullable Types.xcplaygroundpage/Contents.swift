//: [Previous](@previous)

import Foundation

class ProductService {

    let product: [String: Int]

    init(product: [String: Int]) {
        self.product = product
    }

    func maxRating(productName: String) -> Int? {
        if let availableProduct = product[productName] {
            return availableProduct
        } else {
            return nil
        }
//        return product[productName] ?? nil
    }

}

// With Kotlin you can do the following

//if(booking != null) {
//    println(booking.destination)
//}

// Here, `booking.destination` is safely unwrapped ✨✨ MAGIC ✨✨
//: [Next](@next)
