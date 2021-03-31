//
//  Syllabus.swift
//  Jeri
//
//  Created by Esteban Hernandez on 25/03/21.
//

import Foundation
public class Syllabus {
    
    let Vowels = "aeiouy";
    let RegexFindSyllabes = "[^aeiouy]*[aeiouy]+(?:[^aeiouy]*$|[^aeiouy](?=[^aeiouy]))?";
    
    func Spliting(paragraph:String) -> [String] {
        do {
            let regex = try NSRegularExpression(pattern: RegexFindSyllabes)
            let nsString = paragraph as NSString
            let results = regex.matches(in: paragraph, range: NSRange(location: 0, length: nsString.length))
            return results.map { nsString.substring(with: $0.range)}
        } catch let error {
            print("err spliting paragraph: \(error.localizedDescription)")
            return []
        }
    }
    
    func FindLastVowel(currentSyllable:String) -> Character {
        var vowelFind: Character = "@";
        for char in currentSyllable.reversed(){
            if(Vowels.contains(char)){
                vowelFind = char
                break
            }
        }
        return vowelFind
    }

}

