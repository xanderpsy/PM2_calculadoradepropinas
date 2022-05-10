//
//  SegundoViewController.swift
//  AvtividadCalculadoraDePropinas
//
//  Created by Alexander Tapia on 09/05/22.
//

import UIKit

class SegundoViewController: UIViewController {
    var personasrecibir: Float?
    var propinarecibir: Float?
    var totalarecibir: Float?
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var individualLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = "$\(totalarecibir! + (propinarecibir! * totalarecibir!))"
        individualLabel.text = "$\(((totalarecibir! * propinarecibir!)+totalarecibir!)/personasrecibir!)"
       
        
    }
    

    @IBAction func btnRegresar(_ sender: UIButton) {
        dismiss(animated: true)
        dismiss(animated: true)
    }
    

}
