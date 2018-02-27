//: [Previous](@previous)

import Foundation


guard let API_URL = URL(string: "http://ida.omroep.nl/app.php/") else { fatalError() }
let urlSession = URLSession.shared.dataTask(with: API_URL) { (data, response, error) in

}

