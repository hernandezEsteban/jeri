//
//  ViewController.swift
//  Jeri
//
//  Created by Esteban Hernandez on 25/03/21.
//

import UIKit

class ViewController: UIViewController {
    var translator: Translator = Translator()
    
    @IBOutlet weak var TextFieldInputTr: UITextField!
    @IBOutlet weak var TextViewResult: UITextView!
    @IBOutlet weak var btnTranslate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTranslate(_ sender: Any) {
        if(TextFieldInputTr.text?.isEmpty ?? true){
            TextViewResult.text = "que quiere traducir"
        }
        let textToTranslate: String = TextFieldInputTr.text!
        TextViewResult.text = translator.ToJerigonza(paragraph: textToTranslate)
    }
    

}

