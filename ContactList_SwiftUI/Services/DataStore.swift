//
//  DataStore.swift
//  ContactList_SwiftUI
//
//  Created by Алексей on 22.09.2022.
//

import Foundation

final class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Bruce", "Сlark", "Barry", "Diana", "Arthur",
        "Hal", "Billy", "Vic", "John", "Shayera"
    ].shuffled()
    
    let famyles = [
        "Wayne", "Kent", "Allen", "Prince", "Curry",
        "Jordan", "Batson", "Stone", "Jones", "Hall"
    ].shuffled()
    
    let numbers = [
        "+7-945-124-84-03", "+7-911-451-32-76", "+7-952-148-52-76",
        "+7-934-124-14-11", "+7-931-231-40-00", "+7-926-495-34-82",
        "+7-949-284-15-00", "+7-981-401-12-91", "+7-904-124-33-41",
        "+7-911-911-91-19"
    ].shuffled()
    
    let emails = [
        "batman", "superman", "flash", "wonder_woman", "aquaman",
        "green_lantern", "shazam", "cyborg", "martian_manhunter", "hawkgirl"
    ].shuffled()
    
    private init() {}
}
