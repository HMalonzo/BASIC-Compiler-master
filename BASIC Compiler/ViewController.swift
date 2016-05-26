//
//  ViewController.swift
//  BASIC Compiler
//
//  Created by Hanniel C. Malonzo on 5/16/16.
//  Copyright © 2016 Hanniel C. Malonzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fileView: UITextView!
    @IBOutlet weak var consoleView: UITextView!
    
    var saveFile = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0.45, green: 0.45, blue: 0.45, alpha: 1)
        
        
        
        
        
        
    }
    
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        saveFile = fileView.text
        return true
    }
    
    @IBAction func Execute(sender: UIButton) {
        enum Token
        {
            case Define
            case Identifier(String)
            case Number(Float)
            case ParensOpen
            case ParensClose
            case Comma
            case Other(String)
        }
        typealias TokenGenerator = (String) -> Token?
        let tokenList: [(String, TokenGenerator)] = [
            ("[ \t\n]", { _ in nil }),
            ("[a-zA-Z][a-zA-Z0-9]*", { $0 == "def" ? .Define : .Identifier($0) }),
            ("[0-9.]+", { (r: String) in .Number((r as NSString).floatValue) }),
            ("(", { _ in .ParensOpen }),
            (")", { _ in .ParensClose }),
            (",", { _ in .Comma }),
            ]
        
    }
    
    
    //when the text value changes
    //save text file
    //save date and time of edit
    //execute program
    
    
    
    
}

