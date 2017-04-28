//
//  ViewController.swift
//  EVA2_P4_AUTOS
//
//  Created by JOSE CARLOS on 30/03/17.
//  Copyright © 2017 JOSE CARLOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UIPickerViewDataSource  {
    
    @IBOutlet weak var imgV: UIImageView!
    let autos = ["Mustang","Charger","Challenger","Fusion","AudiV8"]
    
    let colores = ["rojo","azul","negro","blanco","gris"]
    
    let año = ["2010","2011","2012","2013","2014","2015","2016","2017"]
    
    let img = ["mustangr10","mustangr16","mustangr17","mustanga17","mustanga16","mustangb10","mustangb16","chargera15",
               "chargern17","chargerb10","fusionb17","fusionb14","fusionb10","charger14","chargera17"]
    
    var arreglo = [0,0,0]
    var mustangr10 = [0,0,0]
    var mustangr16 = [0,0,6]
    var mustanga17 = [0,1,7]
    var chargera15 = [2,1,5]
    var chargerb10 = [1,3,0]
    var fusionb17 = [3,3,7]
    var charger14 = [1,2,4]
    var fusionb14 = [3,3,3]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return autos[row]
        }else if component == 1{
            return colores[row]
        }else{
            return año[row]
        }
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3 //numero de arreglos u origenes de datos
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        arreglo[component] = row
        if arreglo == mustangr10{
            imgV.image = UIImage(named: "mustangr10")
        }else if arreglo == mustangr16{
            imgV.image = UIImage(named: "mustangr16")
        }else if arreglo == mustanga17{
            imgV.image = UIImage(named: "mustanga17")
        }else if arreglo == chargera15{
            imgV.image = UIImage(named: "chargera15")
        }else if arreglo == chargerb10{
            imgV.image = UIImage(named: "chargerb10")
        }else if arreglo == fusionb17{
            imgV.image = UIImage(named: "fusionb17")
        }else if arreglo == charger14{
            imgV.image = UIImage(named: "charger14")
        }else if arreglo == fusionb14{
            imgV.image = UIImage(named: "fusionb14")
        }else {
            let alert = UIAlertController(title: "Error", message: "Auto no encontrado", preferredStyle: .Alert)
            let btn = UIAlertAction(title: "Aceptar", style: .Default, handler: nil)
            alert.addAction(btn)
            presentViewController(alert, animated: true, completion: nil)
            imgV.image = UIImage(named: "")
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return autos.count
        }else if component == 1{
            return colores.count
        }else{
            return año.count
        }
    }



}

