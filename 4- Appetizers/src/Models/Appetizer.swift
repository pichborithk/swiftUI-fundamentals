//
//  Appetizer.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/21/24.
//

import Foundation

struct Appetizer: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageUrl: String
    let calories: Int
    let protein: Int
    let carbs: Int

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case calories
        case protein
        case carbs
        case price
        case imageUrl = "imageURL" // Maps the JSON key "imageURL" to the Swift property "imageUrl"
    }
}

struct AppetizerResponse: Codable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(
        id: 1,
        name: "Asian Flank Steak",
        description: "This perfectly thin cut just melts in your mouth.",
        price: 8.99,
        imageUrl: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
        calories: 300,
        protein: 14,
        carbs: 0
    )

    static let appetizers: [Appetizer] = [
        Appetizer(id: 1, name: "Asian Flank Steak", description: "This perfectly thin cut just melts in your mouth.", price: 8.99, imageUrl: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg", calories: 300, protein: 14, carbs: 0),
        Appetizer(id: 2, name: "Blackened Shrimp", description: "Seasoned shrimp from the depths of the Atlantic Ocean.", price: 6.99, imageUrl: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg", calories: 450, protein: 4, carbs: 3),
        Appetizer(id: 3, name: "Buffalo Chicken Bites", description: "The tasty bites of chicken have just the right amount of kick to them.", price: 7.49, imageUrl: "https://seanallen-course-backend.herokuapp.com/images/appetizers/buffalo-chicken-bites.jpg", calories: 800, protein: 5, carbs: 22),
        Appetizer(id: 4, name: "Chicken Avocado Spring Roll", description: "These won't last 10 seconds once they hit the table.", price: 12.99, imageUrl: "https://seanallen-course-backend.herokuapp.com/images/appetizers/chicken-avocado-spring-roll.jpg", calories: 480, protein: 7, carbs: 19),
        Appetizer(id: 5, name: "Chicken Dumplings", description: "It's really hard to keep coming up with these descriptions.", price: 8.99, imageUrl: "https://seanallen-course-backend.herokuapp.com/images/appetizers/chicken-dumplings.jpg", calories: 580, protein: 4, carbs: 14),
        Appetizer(id: 6, name: "Chicken Fingers", description: "You can never go wrong with some good tenders.", price: 9.99, imageUrl: "https://seanallen-course-backend.herokuapp.com/images/appetizers/chicken-fingers.jpg", calories: 675, protein: 9, carbs: 5),
        Appetizer(id: 7, name: "Chicken Wings", description: "You'll need extra napkins with these tasty treats.", price: 11.49, imageUrl: "https://seanallen-course-backend.herokuapp.com/images/appetizers/chicken-wings.jpg", calories: 700, protein: 13, carbs: 11),
        Appetizer(id: 8, name: "Fried Cheese Ravioli", description: "I'm getting soooo hungry building this app...", price: 8.29, imageUrl: "https://seanallen-course-backend.herokuapp.com/images/appetizers/fried-cheese-ravioli.jpg", calories: 415, protein: 2, carbs: 29),
        Appetizer(id: 9, name: "Jumbo Tater Tots", description: "Scrumptious tots with a side of ranch.", price: 13.99, imageUrl: "https://seanallen-course-backend.herokuapp.com/images/appetizers/jumbo-tater-tot.jpg", calories: 625, protein: 3, carbs: 40),
        Appetizer(id: 10, name: "Meatballs", description: "It's a spiiiiicy meat-a-ball!", price: 12.99, imageUrl: "https://seanallen-course-backend.herokuapp.com/images/appetizers/meatballs.jpg", calories: 500, protein: 33, carbs: 2),
        Appetizer(id: 11, name: "Mozzarella Sticks", description: "The best appetizer there is. Don't @ me.", price: 6.99, imageUrl: "https://seanallen-course-backend.herokuapp.com/images/appetizers/mozzarella-sticks.jpg", calories: 930, protein: 2, carbs: 32),
        Appetizer(id: 12, name: "Philly Cheesesteak Sliders", description: "These look incredible. That's it. That's the description.", price: 10.99, imageUrl: "https://seanallen-course-backend.herokuapp.com/images/appetizers/philly-cheesesteak-sliders.jpg", calories: 725, protein: 28, carbs: 28),
        Appetizer(id: 13, name: "Rainbow Spring Rolls", description: "How did these even make the menu???", price: 5.99, imageUrl: "https://seanallen-course-backend.herokuapp.com/images/appetizers/rainbow-spring-rolls.jpg", calories: 270, protein: 2, carbs: 4),
        Appetizer(id: 14, name: "Stuffed Shells", description: "I'm getting hungrier just looking at these.", price: 12.49, imageUrl: "https://seanallen-course-backend.herokuapp.com/images/appetizers/stuff-shells.jpg", calories: 850, protein: 4, carbs: 42),
    ]
}
