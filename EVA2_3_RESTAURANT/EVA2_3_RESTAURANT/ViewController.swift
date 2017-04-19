//
//  ViewController.swift
//  EVA2_3_RESTAURANT
//
//  Created by JOSE CARLOS on 08/03/17.
//  Copyright © 2017 JOSE CARLOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //arreglos de datos a mostrar e imagenes
    
    let Datos = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore",
                    "confessional","donostia","fiveleaves","forkeerestaurant",
                    "grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster",
                    "posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]
    
    let img = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore",
               "confessional","donostia","fiveleaves","forkeerestaurant",
               "grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster",
               "posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {//devuelve filas en la tabla
        return Datos.count
        //nos devuelve el tamaño del arreglo para el numero de row a usar
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {//lo que demos clic mostrar alert controller dato de lo que es el arreglo
        let controlador = UIAlertController(title: "Elemento seleccionado:", message: Datos[indexPath.row], preferredStyle: .Alert)  //se crea un alertcontrolle
        let btn = UIAlertAction(title: "Ok", style: .Default, handler: nil) //se crea un boton 
        controlador.addAction(btn) //se agrega el boton al alertcontroller
        presentViewController(controlador, animated: true, completion: nil) //muestra el controlador
        //se muestra un alert cuando se selecciona un elemento de la tabla
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {//arreglo en la tabla ler cuando usa scroll
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda")
        //FALTA ASIGNAR LOS DATOS DEL ARREGLO A LA CELDA QUE SE VA A REUTILIZAR
         //if celda == nil {
         //  celda = UITableViewCell(style: .Default, reuseIdentifier: "micelda")
         //}
        celda?.textLabel?.text = Datos[indexPath.row] //index path indice de la tabla saber que fila estas
        let imFija = UIImage(named: img[indexPath.row]) //llamar al arreglo
        celda?.imageView?.image = imFija
   
        return celda!
        
        //se carga el arreglo en la tabla 
    }


}

