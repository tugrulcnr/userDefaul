//
//  ViewController.swift
//  userDefaulProjesi
//
//  Created by ertugrul on 19.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var notTextField: UITextField!
    
    @IBOutlet weak var zamanTextFild: UITextField!
    
    @IBOutlet weak var notLabal: UILabel!
    
    @IBOutlet weak var zamanLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        
        if let tmpNot = kaydedilenNot as? String{
            notLabal.text = "Yapılacak işler : \(tmpNot)"
        }
        
        if let tmpZaman = kaydilenZaman as? String{
            zamanLabel.text = "Yapılacak Zaman :\(tmpZaman)"
        }
    }

    @IBAction func kayıtTiklandi(_ sender: Any) {
        UserDefaults.standard.set(notTextField.text, forKey: "not")
        UserDefaults.standard.set(zamanTextFild.text, forKey: "zaman")
        
        
        notLabal.text = "Yapılacak işler : \(notTextField.text!)"
        zamanLabel.text = "Yapılacak Zaman :\( zamanTextFild.text!)"
        
    }
    
    @IBAction func silTiklandi(_ sender: Any) {
        
        let kaydedilenNot = UserDefaults.standard.string(forKey: "not")
        let kaydidilenZaman = UserDefaults.standard.string(forKey: "zaman")
        
        if (kaydedilenNot as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "not")
            notLabal.text = "Yapılacak işler :"
        }
        if kaydidilenZaman != nil {
            UserDefaults.standard.removeObject(forKey: "zaman")
            zamanLabel.text = "Yapılacak Zaman :"
        }
        
        
        
        
    }
}

