//
//  ViewController.swift
//  AvtividadCalculadoraDePropinas
//
//  Created by Alexander Tapia on 06/05/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    
    var porcentajeamandar: String?
    var pickerData: [String] = []
    @IBOutlet weak var totalTF: UITextField!
    @IBOutlet weak var porcentajePropinaPV: UIPickerView!
    @IBOutlet weak var cantidadPersonasTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.porcentajePropinaPV.delegate = self
        self.porcentajePropinaPV.dataSource = self
       // pickerData = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]
        for i in 1...50{
           
            pickerData.append("\(i)%")
        }
       
    }
    
    
    @IBAction func btnCalcular(_ sender: UIButton) {
        performSegue(withIdentifier: "datos", sender: self)
    }
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           // Dispose of any resources that can be recreated.
       }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      porcentajeamandar =  ("0.\(pickerData[row].dropLast())")
        
    }
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "datos"{
                            let objDestino = segue.destination as! SegundoViewController
            objDestino.propinarecibir = Float(porcentajeamandar ?? "1.0")
            objDestino.totalarecibir = Float(totalTF.text ?? "1.0")
            objDestino.personasrecibir = Float(cantidadPersonasTF.text ?? "1.0")
            
        }
    }

}

