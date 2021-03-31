//
//  ViewController.swift
//  Jeri
//
//  Created by Esteban Hernandez on 25/03/21.
//

import UIKit

class ViewController: UIViewController {
    let cornerStandar : CGFloat = 20.0;
    
    @IBOutlet weak var InputTextView: UITextView!
    
    var translator: Translator = Translator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        InputTextView.centerVertically()
        
    }

}
extension UITextView {

    func centerVertically() {
           let fittingSize = CGSize(width: bounds.width, height: CGFloat.greatestFiniteMagnitude)
           let size = sizeThatFits(fittingSize)
           let topOffset = (bounds.size.height - size.height * zoomScale) / 2
           let positiveTopOffset = max(1, topOffset)
           contentOffset.y = -positiveTopOffset
       }
}

