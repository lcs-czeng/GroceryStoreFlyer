//
//  FlyerModel.swift
//  GroceryStoreFlyer
//
//  Created by 曾梓恒 on 2025-01-09.
//

import Foundation

struct Flyer {
    let departments: [Department]
}
 
struct Department: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    let items: [FoodItem]
}
 
struct FoodItem: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: String
    let description: String
}

let thisWeeksFlyer = Flyer(
    
    departments: [
        
        Department(
            name: "Butcher's Best",
            icon: "butcher-animated",
            items: [
                FoodItem(
                    name: "Sirloin Tip",
                    image: "sirloin-tips",
                    price: "12.99$/lb",
                    description: "SOURCED from premium Canadian beef, these sirloin tips are known for their exceptional quality and rich flavor. A lean yet tender cut, perfect for roasting, delivering a delicious and juicy dining experience every time."
                ),
                FoodItem(
                    name: "Porkloin Back Ribs",
                    image: "porkloin-back-ribs",
                    price: "5.99$/lb",
                    description: "SOURCED from top-quality Canadian pork, these porkloin back ribs are prized for their tender, juicy meat and rich flavor. Perfect for grilling, roasting, or slow-cooking, they offer a mouthwatering experience that's hard to beat."
                ),
            ]
        ),
 
        Department(
            name: "Seafood",
            icon: "fisherman-animated",
            items: [
                FoodItem(
                    name: "Wild Pacific Halibut Fillets",
                    image: "wild-pacific-halibut-fillets",
                    price: "42.99$/lb",
                    description: "CAUGHT fresh from the pristine waters of the Pacific, these halibut fillets are renowned for their firm texture and delicate, buttery flavor. A versatile and premium seafood choice, perfect for grilling, baking, or pan-searing."
                ),
                FoodItem(
                    name: "Wild Sockeye Salmon Fillets",
                    image: "wild-sockeye-salmon-fillets",
                    price: "12.99$/lb",
                    description: "HARVESTED from the cold, clear waters of the Pacific, these wild sockeye salmon fillets boast a vibrant color, rich flavor, and tender texture. A top choice for grilling, baking, or pan-searing, they bring exceptional quality to your table."
                ),
                FoodItem(
                    name: "Clam Chowder",
                    image: "clam-chowder",
                    price: "3.99$/ea",
                    description: "MADE with tender clams sourced from sustainable fisheries, this classic clam chowder offers a rich, creamy base infused with savory flavors. Perfect for a quick, hearty meal, delivering the taste of the coast in every spoonful."
                ),
            ]
        ),
        
        
    ]
)
