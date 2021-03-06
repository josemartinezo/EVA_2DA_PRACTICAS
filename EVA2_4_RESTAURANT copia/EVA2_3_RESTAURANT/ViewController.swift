//
//  ViewController.swift
//  EVA2_3_RESTAURANT
//
//  Created by JOSE CARLOS on 08/03/17.
//  Copyright © 2017 JOSE CARLOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let Datos = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore",
                    "confessional","donostia","fiveleaves","forkeerestaurant",
                    "grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster",
                    "posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]
    
    let imgd = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore",
               "confessional","donostia","fiveleaves","forkeerestaurant",
               "grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster",
               "posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]

               //arreglos de los datos e imagenes

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
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {//lo que demos clic mostrar alert controller dato de lo que es el arreglo
        let controlador = UIAlertController(title: "Elemento seleccionado:", message: Datos[indexPath.row], preferredStyle: .Alert)
        let btn = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        controlador.addAction(btn)
        presentViewController(controlador, animated: true, completion: nil)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {//arreglo en la tabla ler cuando usa scroll
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda") as! TableViewCellmia
        
        celda.lblNombre.text = Datos[indexPath.row] //index path indice de la tabla saber que fila estas
        celda.lblUbica.text = "Chihuahua"
        celda.lblDesc.text = "Far Far away..."
        let img = UIImage(named: imgd[indexPath.row]) //llamar al arreglo
        celda.imgImagen.image = img
   
        return celda
        //carga los elementos del arreglo en los outlet de tableviewcellmia 
        
        //FALTA ASIGNAR LOS DATOS DEL ARREGLO A LA CELDA QUE SE VA A REUTILIZAR
        //if celda == nil {
        //  celda = UITableViewCell(style: .Default, reuseIdentifier: "micelda")
        //}
        
        
    }
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let compartirAct = UITableViewRowAction(style: .Default, title: "Compartir", handler: comparteRest)
        return [compartirAct]
            //cuando se deslice un row de la tabla nos muestra un boton de compartir
        }
       
    
    func comparteRest(action: UITableViewRowAction, indexPath: NSIndexPath) -> Void {
        let miTexto = "Vine a comer en " + imgd[indexPath.row]
        let miImagen = UIImage(named: imgd[indexPath.row])
        let actiController = UIActivityViewController(activityItems: [miTexto, miImagen!], applicationActivities: nil)
        presentViewController(actiController,animated: true, completion : nil)

        // al hacer clic en el boton de compartir nos da las opciones de compartir con los datos de mitexto, mi imagen
        //y el activitycontroller que es el que hace la accion de compartir
    }


}

