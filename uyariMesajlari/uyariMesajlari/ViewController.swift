//
//  ViewController.swift
//  uyariMesajlari
//
//  Created by Dilan Öztürk on 12.12.2022.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpTiklandi(_ sender: Any) {
        
        
        
        if emailTextField.text == "" {
            alertOlustur(titleGirdisi: "Hata Mesajı!", messageGirdisi: "Email Eksik")
        }
        
        else if passwordTextField.text == "" {
            alertOlustur(titleGirdisi: "Hata Mesajı!", messageGirdisi: "Password Eksik")
        }
        else if passwordTextField.text != password2TextField.text {
            alertOlustur(titleGirdisi: "Hata Mesajı!", messageGirdisi: "Parolar Uyuşmuyor")
        }
        else{
            alertOlustur(titleGirdisi: "Tebrikler!", messageGirdisi: "Kullanıcı Oluşturuldu")
        }
        
    }
    
    func alertOlustur( titleGirdisi: String, messageGirdisi: String) {
        let uyariMesaji = UIAlertController(title: titleGirdisi, message: messageGirdisi, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {(UIAlertAction) in
            print("ok button tıklandı")
        }
        
        uyariMesaji.addAction(okButton)
        self.present(uyariMesaji, animated: false)
        
    }
    

}

