//
//  ViewController.swift
//  ECA2_9_SEGUE
//
//  Created by JOSE CARLOS on 23/03/17.
//  Copyright © 2017 JOSE CARLOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func lanzarSegue(sender: AnyObject) {
    //metodo para lanzar el segue y cambiar de pantalla 
        let action = UIAlertController(title: "Pantallas", message: "Mostrar pantallas", preferredStyle: .Alert)
        //se crea un alertcontroller
        let actionmenta = UIAlertAction(title: "MENTA", style: .Default, handler: {action in self.performSegueWithIdentifier("menta", sender: self)})//handelr codigo que hace cunaod persionas el boton
        let actionrojo = UIAlertAction(title: "ROJO", style: .Default, handler: {action in 
        //handler codigo que hace cuando presionas el boton lanza el segue ya sea rojo o menta
        self.performSegueWithIdentifier("rojo", sender: self)})
        
        action.addAction(actionmenta)
        action.addAction(actionrojo)
        //se agergan los aleraction al alert controller
        presentViewController(action, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "menta"{ //identifica que vas a generar que segue se selecciona
        
            let miViewController = segue.destinationViewController as! mentaViewController // adquirir el view controller
            miViewController.sTexto = "HOLA MUNDO!!!"// hacer lo que quiera con sus atributos
            
        }else if segue.identifier == "rojo"{ //identifica que vas a generar
            
            let miViewController = segue.destinationViewController as! rojoViewController // adquirir el view controller
            miViewController.sMensa = "HOLA MUNDO!!!"// hacer lo que quiera con sus atributos
        }
    }
    


}

