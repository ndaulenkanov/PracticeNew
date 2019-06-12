//
//  QuestionList.swift
//  ProjectNum1
//
//  Created by Нұржан Дауленканов on 6/7/19.
//  Copyright © 2019 Нұржан Дауленканов. All rights reserved.
//

import Foundation
class QuestionList{
    var questions = [Question]()
    
    init() {
        questions.append(Question(questionTitle: "Когда была принята первая Конституция независимого Казахстана?", button1Text: "28 января 1993 года", button2Text: "21 октября 2000 года", button3Text: "25 октября 1989 года", button4Text: "31 августа 1998 года", rightAnswer: "28 января 1993 года"))
        questions.append(Question(questionTitle: "Автор Государственного флага", button1Text: "Шакен Ниязбеков", button2Text: "Нурсултан Назарбаев", button3Text: "Шота Смаханулы", button4Text: "Жумекен Нажимеденов", rightAnswer: "Шакен Ниязбеков"))
        questions.append(Question(questionTitle: "Когда был утвержден Государственный флаг?", button1Text: "В октябре 2000 года", button2Text: "В декабре 1991  года", button3Text: "В январе 1998 года", button4Text: "В июне 1992года", rightAnswer: "В июне 1992года"))
        questions.append(Question(questionTitle: "Образ солнца в центре государственного флага является символом ...", button1Text: "Ясного неба", button2Text: "Вечности жизни", button3Text: "Богатства", button4Text: "Солнца", rightAnswer: "Вечности жизни"))
        questions.append(Question(questionTitle: "В каком году был принят первый текст Гимна?", button1Text: "В декабре 1995 года", button2Text: "В декабре 1992 года", button3Text: "В декабре 1993 года", button4Text: "В декабре 2000 года", rightAnswer: "В декабре 1992 года"))
         questions.append(Question(questionTitle: "Год появления народа 'Казах'", button1Text: "1465", button2Text: "1991", button3Text: "1435", button4Text: "1455", rightAnswer: "1465"))
         questions.append(Question(questionTitle: "Первый Хан Казахов", button1Text: "Жанибек", button2Text: "Касым", button3Text: "Кенес", button4Text: "Хакназар", rightAnswer: "Кенес"))
         questions.append(Question(questionTitle: "Религия?", button1Text: "Ислам", button2Text: "Христианство", button3Text: "Буддизм", button4Text: "Иудаизм", rightAnswer: "Ислам"))
         
         questions.append(Question(questionTitle: "Площадь Казахстана", button1Text: "2 725 000", button2Text: "2 475 000", button3Text: "2 000 000", button4Text: "2 125 000", rightAnswer: "2 725 000"))
         questions.append(Question(questionTitle: "Первый Президент Казахстана", button1Text: "Нурсултан Назарбаев", button2Text: "Касым - Жомарт Токаев", button3Text: "Динмухаммед Кунаев", button4Text: "Алихан Бокейханов", rightAnswer: "Нурсултан Назарбаев"))


    }
}
