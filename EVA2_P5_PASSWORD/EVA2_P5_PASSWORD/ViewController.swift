//
//  ViewController.swift
//  EVA2_P5_PASSWORD
//
//  Created by JOSE CARLOS on 31/03/17.
//  Copyright © 2017 JOSE CARLOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
   

    
    
    @IBOutlet weak var idPasswd: UITextField!
    
    var img: [UIImage]!
    var arreglo = [0,0,0]
    var passwd = [2,3,4]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        img = [UIImage(named: "facebook")!,
               UIImage(named: "google")!,
               UIImage(named: "instagram")!,
               UIImage(named: "pinterest")!,
               UIImage(named: "twitter-xl")!]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let image = img[row]
        let imgView = UIImageView(image: image)
        return imgView
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return img.count
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        arreglo[component] = row
        if arreglo == passwd{
            if(idPasswd.text == "jose"){
               // let alert = UIAlertController(title: "Conexion exitosa", message: "Correcto", preferredStyle: .Alert)
               // let btn = UIAlertAction(title: "Aceptar", style: .Default, handler: nil)
               // alert.addAction(btn)
                
               // presentViewController(alert, animated: true, completion: nil)
                let action = UIAlertController(title: "Bienvenido", message: "Da clic en Ingresar ", preferredStyle: .Alert)
                let actionmenta = UIAlertAction(title: "Ingresar", style: .Default, handler: {action in self.performSegueWithIdentifier("mostrar", sender: self)})
                action.addAction(actionmenta)
                presentViewController(action, animated: true, completion: nil)
                
            }
        }else{
            let dialogo = UIAlertController(title: "Error", message: "Nombre de usuario/passwd incorrecto", preferredStyle: .Alert)
            let btnAceptar = UIAlertAction(title: "Aceptar", style: .Default, handler: nil)
            let btnCancelar = UIAlertAction(title: "Cancelar", style: .Cancel, handler: nil)
            dialogo.addAction(btnAceptar)
            dialogo.addAction(btnCancelar)
            presentViewController(dialogo, animated: true, completion: nil)
        }

        
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }

   // override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       // if segue.identifier == "mostrar"{ //identifica que vas a generar
            
        //    let miViewController = segue.destinationViewController as! imgViewController // adquirir el view controller
            //hacer lo que quiera con sus atributos
            
      //  }
    //}

    


}

