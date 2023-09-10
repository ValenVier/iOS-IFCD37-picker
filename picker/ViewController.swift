//
//  ViewController.swift
//  picker
//
//  Created by Javier Rodríguez Valentín on 21/09/2021.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
    var array = ["España", "Italia", "Francia", "Holanda", "Suecia", "Dinamarca"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.dataSource = self
        picker.delegate = self
        
    }

}

extension ViewController{
    
    //esta función retorna número de columnas del selector y estoy obligado a incluirla para implementar el protocolo
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 //número de columnas
    }
    
    //esta función retorna el número de filas del selector
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    
    //mostrarcada elemento del array
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    
    //función para hacer algo al seleccionar algún elemento
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        //print("Has seleccionado el elemento \(array[row])")
        
        let id = "sg" + array[row]
        //performSegue(withIdentifier: id, sender: self)
        print("Has seleccionado el elemento \(id)")
        
        label.text = array[row]
        var color:UIColor = .black
        var bgColor:UIColor = .black
        switch array[row] {
        case "España":
            color = .red
            bgColor = .yellow
        case "Italia":
            color = .green
            bgColor = .red
        case "Francia":
            color = .white
            bgColor = .blue
        case "Holanda":
            color = .purple
            bgColor = .green
        case "Suecia":
            color = .blue
            bgColor = .yellow
        case "Dinamarca":
            bgColor = .blue
            color = .brown
        default:
            bgColor = .black
            color = .gray
        }
        
        label.textColor = color
        label.backgroundColor = bgColor
    }
    
}

