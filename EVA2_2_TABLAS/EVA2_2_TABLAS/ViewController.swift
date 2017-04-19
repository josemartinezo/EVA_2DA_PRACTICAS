//
//  ViewController.swift
//  EVA2_2_TABLAS
//
//  Created by JOSE CARLOS on 07/03/17.
//  Copyright © 2017 JOSE CARLOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource ,UITableViewDelegate{
    //codigo acceso a los datos y comportamiento de la tabla (tableviewdatasource, tableviewdelegate)
    
    let misDatos = ["8","8","8","8","8","8","8","8","xD","holi","8","8","8","8","8","8","8","8","xD","holi"] 
    //arreglo de los datos a cargar en la tabla

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {//devuelve filas en la tabla
        return misDatos.count
        //regresa el tamaño del arreglo para utilizar o reciclar los row
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {//lo que demos clic mostrar alert controller dato de lo que es el arreglo
        let controlador = UIAlertController(title: "Tus datos", message: misDatos[indexPath.row], preferredStyle: .ActionSheet)
        let btn = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        controlador.addAction(btn)
        presentViewController(controlador, animated: true, completion: nil)
        //se realiza todo el codigo que pongamos aqui al precionar un row de la tabla 
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {//arreglo en la tabla ler cuando usa scroll
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda")
        //FALTA ASIGNAR LOS DATOS DEL ARREGLO A LA CELDA QUE SE VA A REUTILIZAR
       // if celda == nil {
         //   celda = UITableViewCell(style: .Default, reuseIdentifier: "micelda")
       // }
        celda?.textLabel?.text = misDatos[indexPath.row] //index path indice de la tabla saber que fila estas
        let imFija = UIImage(named: "star-b") //llamar al arreglo
        let imClick = UIImage(named: "star-p")
        celda?.imageView?.image = imFija
        celda?.imageView?.highlightedImage = imClick
        return celda!
        //en este metodo se guardara todo lo que nos mostrara cuando se usa el scroll
        
    }
}

