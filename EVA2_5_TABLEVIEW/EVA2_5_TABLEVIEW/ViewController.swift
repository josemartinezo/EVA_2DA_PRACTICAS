//
//  ViewController.swift
//  EVA2_5_TABLEVIEW
//
//  Created by JOSE CARLOS on 14/03/17.
//  Copyright © 2017 JOSE CARLOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    
    let datos = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore",
                 "confessional","donostia","fiveleaves","forkeerestaurant",
                 "grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster",
                 "posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]
                 //arreglo de datos 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datos.count
        //regresa el tamaño del arreglo para usar los row
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: "Datos seleccionados", message: datos[indexPath.row], preferredStyle: .ActionSheet) //selecciona el dato en el que se dio click
        
        let btn = UIAlertAction(title: "OK", style: .Default, handler: nil) //Crea un Boton con texto OK
        controlador.addAction(btn) //poner el controlador en el boton
        presentViewController(controlador, animated: true, completion: nil) // muestra el dato al que se le dio click
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda") as! TableViewCellMia
        
        
        celda.lblNombre.text = datos[indexPath.row] // se le da los datos a la celda --- indexPath para saber que fila fue seleccionada
        celda.lblUbica.text = "Chihuahua" // Agrega una ubicacion para todos nuestros datos
        celda.lblDesc.text = "Far Far Away..." //Agrega una descripcion para todos nuestros datos
        let img = UIImage(named: datos[indexPath.row])//seleccionar una imagen
        celda.imgImagen.image = img // asigna la imFija
        return celda // regresamos la celda
        //carga los elementos del arreglo en los outlet creados en tableviewcellmia
    }
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let compartirAct = UITableViewRowAction(style: .Default, title: "Compartir", handler: comparteRest)
        return [compartirAct]
        //crea el boton de compartir al deslizar el row
    }
    
    func comparteRest(action: UITableViewRowAction, indexPath: NSIndexPath) -> Void {
        let miTexto = "Vine a comer en " + datos[indexPath.row] //Selecciona el arreglo de nombres y elige en el que se dio click
        let miImagen = UIImage(named: datos[indexPath.row]) //Selecciona el arreglo de imagenes y elige en el que se dio click
        let actController = UIActivityViewController(activityItems: [miTexto, miImagen!], applicationActivities: nil) // junta la imagen y texto
        presentViewController(actController, animated: true, completion: nil) // crea la animacion para compartir
    }


}

