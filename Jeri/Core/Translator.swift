//
//  Translator.swift
//  Jeri
//
//  Created by Esteban Hernandez on 30/03/21.
//

import Foundation

public class Translator {
    let syllabus: Syllabus
    
    init() {
        syllabus = Syllabus()
    }
    
    func ToJerigonza(paragraph: String, mode: String = "p") -> String {
        let syllabusSplited = syllabus.Spliting(paragraph: paragraph)
        var result : String
        result = ""
        for s in syllabusSplited {
            var syllabeTemp : String = s.trimmingCharacters(in: .whitespacesAndNewlines)
            let currentVowel = syllabus.FindLastVowel(currentSyllable: syllabeTemp)
            syllabeTemp.append(mode)
            syllabeTemp.append(currentVowel)
            let isAnotherWord : Bool = s.contains(" ")
            if(isAnotherWord){
                syllabeTemp.append(" ")
            }
            result.append(syllabeTemp)
        }
        return result
    }
}
