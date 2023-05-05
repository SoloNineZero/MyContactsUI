//
//  DataManager.swift
//  MyContacts
//
//  Created by Игорь Солодянкин on 05.05.2023.
//

final class DataStore {
    static let shared = DataStore()
    
    let names = [
        "Иван",
        "Игорь",
        "Алексей",
        "Владимир",
        "Павел",
        "Савелий",
        "Сергей",
        "Никита",
        "Григорий",
        "Степан"
    ]
    
    let surnames = [
        "Джунов",
        "Мидлов",
        "Техлидов",
        "Сеньёров",
        "Тимлидов",
        "Хеадофф",
        "Айосов",
        "Мидлплюсов",
        "Девопсов",
        "Синьёров-помидоров"
    ]
    
    let phones = [
        "89227770000",
        "+73517340010",
        "996151221211",
        "+74996351621",
        "88005553535",
        "89084335005",
        "83214446006",
        "8939557007",
        "82926668108",
        "89927779009",
    ]
    
    let emails = [
        "1111@mail.ru",
        "one@ya.ru",
        "two@os.ru",
        "office@ap.com",
        "salery@11.ru",
        "oops@kk.ru",
        "nine@9.ru",
        "healp@help33.com",
        "support@panama.ru",
        "zoiberg@fork.ru",
    ]
    
    private init() {}
}
