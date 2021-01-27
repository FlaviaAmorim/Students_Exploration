//
//  ViewController.swift
//  SwiftLab
//
//  Created by casavi on 10/01/21.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Propriedades
    
    // Variáveis para armazenar o peso e altura
    var faixaPeso: String = " Peso normal"
    var nomeAsset: String = " peso3.png"
    
    /* >>> ALUNO <<< */

    // MARK: Conexões com a View (Tela)

    
    @IBOutlet weak var txtPeso: UITextField!
    @IBOutlet weak var txtAltura: UITextField!
    
    
    // MARK: Funções disparadas por eventos na View (Tela)
    @IBAction func easterEgg(_ sender: Any) {
        print("A foursys dá as boas vindas aos trainees de iOS!")
    }
    
    // Função executada quando o botão Calcular for clicado
    @IBAction func btnCalcularIMC(_ sender: UIButton) {
        
        /* >>> ALUNO <<< */
        
        // Validar os campos digitados
        
        if txtPeso.text == "" || txtAltura.text == ""{
            print("Campo vazio!")
            //Para indicar um feedback para o cliente que os campos podem estar vazios
            let alerta = UIAlertController(title: " Atenção!", message: "Favor preencher todos os campos", preferredStyle: .alert)
            let acao = UIAlertAction(title: "OK", style: .default, handler: nil)
            alerta.addAction(acao)
            present(alerta, animated: true, completion: nil)
            
            //como deu erro, vamos sair d funcao
            return
            
    } else {
        print ("Campos preenchidos.")
    }
        
        // Campos estão preenchidos, vamos prosseguir
        // Internamente, os cálculos são efetuados utilizando-se o ponto decimal, e não a vírgula
        // Por isso, substituímos a vírgula pelo ponto
        
        // Remover comentários (le o que o usuario digitou e tira o ponto e troca por virgula)
        let peso = Double(txtPeso.text!.replacingOccurrences(of: ",", with: "."))!
        let altura = Double(txtAltura.text!.replacingOccurrences(of: ",", with: "."))!
        
        // Estamos prontos para efetuar o cálculo
        // Calcula o IMC
        let imc = peso/(altura * altura)
        
        // Determinacao das faixas
        switch imc {
        case 16...16.99:
            faixaPeso = " Baixo peso grave!"
            nomeAsset = " peso1.png"
        case 17...18.49:
            faixaPeso = " Baixo peso!"
            nomeAsset = " peso2.png"
        case 18.5...24.99:
            faixaPeso = " Baixo normal!"
            nomeAsset = " peso3.png"
        case 25...29.99:
            faixaPeso = " Sobrepeso!"
            nomeAsset = " peso4.png"
        case 30...34.99:
            faixaPeso = " Obesidade grau I!"
            nomeAsset = " peso5.png"
        case 35...39.99:
            faixaPeso = " Obesidade grau II!"
            nomeAsset = " peso6.png"
        case 40...1000:
            faixaPeso = " Obesidade grau III (obesidade mórbida)"
            nomeAsset = " peso7.png"
        default:
            print("Peso indeterminado!")
        }
        /* >>> ALUNO <<< */
        // Sugestão - utilizar a cláusula switch

    }

    
    // MARK: Estados da View (Tela)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Para não exibir o título na página principal
        navigationItem.title = "FourSys Swift Labs"
    }
    
    // MARK: Delegates - Eventos, mensagens e notificações enviados pelos elementos da tela
    // MARK: - Delegates
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }
    
    // Força saída do teclado ao tocar em qualquer lugar da tela
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK: - Segues
    // Aqui preparamos a transição para a segunda tela do aplicativo
    //  Carrega informações na 2ª tela
    //  Essa função é chamada pelo recurso de "segue" que implementamos no botão de cálculo
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        /* >>> ALUNO <<< */
        
        // Preparar chamada para a 2ª tela

    }
    
}




