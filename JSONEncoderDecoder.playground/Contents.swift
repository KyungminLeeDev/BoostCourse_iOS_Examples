import UIKit



struct GroceryProduct: Codable {
    var name: String
    var points: Int
    var description: String?
}

// MARK: - JSONEncoder
// Codable 프로토콜을 준수하는 GroceryProduct 구조체의 인스턴스를 JSON 데이터로 인코딩하는 방법

let pear = GroceryProduct(name: "Pear", points: 250, description: "A ripe pear.")

let encoder = JSONEncoder()

// 들여쓰기를 통해 가독성이 좋게 출력하도록 설정
encoder.outputFormatting = .prettyPrinted

do {
    let data = try encoder.encode(pear)
    print(String(data: data, encoding: .utf8)!)
} catch {
    print(error)
}

/* 출력
 {
   "name" : "Pear",
   "points" : 250,
   "description" : "A ripe pear."
 }
 */


// MARK: - JSONDecoder
// JSON 데이터를 Codable 프로토콜을 준수하는 GroceryProduct 구조체의 인스턴스로 디코딩하는 방법입니다.

let json = """
{
  "name" : "Durian",
  "points" : 600,
  "description" : "A fruit with a distinctive scent."
}
""".data(using: .utf8)!

let decoder = JSONDecoder()

do {
    let product = try decoder.decode(GroceryProduct.self, from: json)
    print(product.name)
} catch {
    print(error)
}

// 출력
// "Durian"
