//
//  CollectionData.swift
//  Lesson2_10
//
//  Created by Evgeny Mastepan on 15.12.2024.
//

import UIKit

struct CollectionData: Identifiable {
    let id: String = UUID().uuidString
    
    let header: String
    let items: [CollectionItem]
    
    static func incomingData() -> [CollectionData] {
        let nameItems = [
            CollectionItem(image: "1", name: "Айзек Азимов"),
            CollectionItem(image: "2", name: "Рэй Бредбери"),
            CollectionItem(image: "3", name: "Ольга Громыко"),
            CollectionItem(image: "4", name: "Роджер Желязны"),
            CollectionItem(image: "5", name: "Стивен Кинг"),
            CollectionItem(image: "6", name: "Генри Лайон Олди"),
            CollectionItem(image: "7", name: "Терри Пратчетт"),
            CollectionItem(image: "8", name: "Братья Стругацкие"),
            CollectionItem(image: "9", name: "Кир Булычёв"),
            CollectionItem(image: "10", name: "Анджей Саковский"),
            ]
        let bookItems = [
            CollectionItem(image: "1_1", text: ""),
            CollectionItem(image: "1_2", text: ""),
            CollectionItem(image: "1_3", text: ""),
            CollectionItem(image: "2_1", text: ""),
            CollectionItem(image: "2_2", text: ""),
            CollectionItem(image: "2_3", text: ""),
            CollectionItem(image: "3_1", text: ""),
            CollectionItem(image: "3_2", text: ""),
            CollectionItem(image: "3_3", text: ""),
            CollectionItem(image: "4_1", text: ""),
            CollectionItem(image: "4_2", text: ""),
            CollectionItem(image: "4_3", text: ""),
            CollectionItem(image: "5_1", text: ""),
            CollectionItem(image: "5_2", text: ""),
            CollectionItem(image: "5_3", text: ""),
            CollectionItem(image: "6_1", text: ""),
            CollectionItem(image: "6_2", text: ""),
            CollectionItem(image: "6_3", text: ""),
            CollectionItem(image: "7_1", text: ""),
            CollectionItem(image: "7_2", text: ""),
            CollectionItem(image: "7_3", text: ""),
            CollectionItem(image: "8_1", text: ""),
            CollectionItem(image: "8_2", text: ""),
            CollectionItem(image: "8_3", text: ""),
            CollectionItem(image: "9_1", text: ""),
            CollectionItem(image: "9_2", text: ""),
            CollectionItem(image: "9_3", text: ""),
            CollectionItem(image: "10_1", text: ""),
            CollectionItem(image: "10_2", text: ""),
            CollectionItem(image: "10_3", text: ""),
            ]
        let newsItems = [
            CollectionItem(image: "news1", header: "Заголовок1", text: "всякоразнаяерундоваяфигня"),
            CollectionItem(image: "news2", header: "Заголовок1", text: "всякоразнаяерундоваяфигня"),
            CollectionItem(image: "news3", header: "Заголовок1", text: "всякоразнаяерундоваяфигня"),
            CollectionItem(image: "news4", header: "Заголовок1", text: "всякоразнаяерундоваяфигня"),
            ]
        let bannerItems = [
            CollectionItem(image: "banner1"),
            CollectionItem(image: "banner2"),
            CollectionItem(image: "banner3"),
            CollectionItem(image: "banner4"),
            ]
        
        let nameSection = CollectionData(header: "Авторы", items: nameItems)
        let bookSection = CollectionData(header: "Книги", items: bookItems)
        let newsSection = CollectionData(header: "Новости рынка", items: newsItems)
        let bannerSection = CollectionData(header: "Баннеры", items: bannerItems)
        
        return [nameSection, bookSection, newsSection, bannerSection]
        
    }
}

struct CollectionItem: Identifiable {
    let id: String = UUID().uuidString
    let image: String
    var header: String? = nil
    var name: String? = nil
    var text: String? = nil
}
