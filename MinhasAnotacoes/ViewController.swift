//
//  ViewController.swift
//  MinhasAnotacoes
//
//  Created by Leonardo Almeida on 12/06/22.
//

import UIKit

class ViewController: UIViewController {

    let chave = "minhaAnotacao"
    @IBOutlet weak var textoCampo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textoCampo.text = recuperarAnotacao()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    @IBAction func salvarAnotacao(_ sender: Any) {
        if let texto = textoCampo.text {
            UserDefaults.standard.set(texto, forKey: chave)
        }
        view.endEditing(true)
    }
    
    func recuperarAnotacao() -> String {
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave) {
            return textoRecuperado as! String
        }
        
        return ""
    }

}

