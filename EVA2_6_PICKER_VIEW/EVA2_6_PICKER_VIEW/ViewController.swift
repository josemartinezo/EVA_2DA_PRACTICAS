//
//  ViewController.swift
//  EVA2_6_PICKER_VIEW
//
//  Created by JOSE CARLOS on 16/03/17.
//  Copyright © 2017 JOSE CARLOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let datos = ["Jose","Danelly","David","Lorem","Karelyts","Katy","Luis"]
    
    let datos1 = ["Mustang","Charger","Challenger","I8","Mazda 6","911","Caiman","CX-5"]

    //arreglos de los datos a mostrar en el 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //carga el dato del arreglo en el pick, se hace un if para cargar los datos en el pick 1 o 2
        if component == 0{
        return datos[row]
        }else{
        return datos1[row]
        }
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2 //numero de arreglos u origenes de datos
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var sMensa: String
        if component == 0{
        sMensa = datos[row]
        }else{
        sMensa = datos1[row]
        }

        let acMostrar = UIAlertController(title: "PICKERVIEW", message: sMensa, preferredStyle: .Alert)
        let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        acMostrar.addAction(acBoton)
        presentViewController(acMostrar, animated: true, completion: nil)
        //almacen en la variable sMensa el dato del arreglo en el row seleccionado y muestra un alert dicciendo que elemento se 
        //selecciono
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return datos.count
        }else{
        return datos1.count
        }

        //devuelve el tamaño del arreglo para usar los row
    }
    
    

}

