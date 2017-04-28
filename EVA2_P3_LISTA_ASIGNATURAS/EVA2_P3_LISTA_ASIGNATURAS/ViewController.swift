//
//  ViewController.swift
//  EVA2_P3_LISTA_ASIGNATURAS
//
//  Created by JOSE CARLOS on 28/03/17.
//  Copyright © 2017 JOSE CARLOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
  
    @IBOutlet weak var imgl: UIImageView!
    @IBOutlet weak var lblArea: UILabel!
    
    let materias = ["Redes","Conmutacion y enrutamiento","Administracion de redes","Fundamentos de BD","Taller de BD","Administracion de BD","Fundamentos de programacion","Programacion orientada a OBj.","Estructura de datos","Topicos avanzados de programacion","Programacion Web","Plataforma 1","Plataforma 2","Programacion web para moviles"]
    let semestre = ["6to Semestre","7Mo Semestre","8vo semestre","3r semestre","4to semestre","5to semestre","1er semestre","2do semestre","3er semestre","4to semestre","8vo semestre","8vo semestre","9vo semestre","9vo semestre"]
    let img = ["redes","conmu","admon","fundbd","tallerbd","admonbd","fundpro","objpro","estru","topicos",
               "proweb","plat1","plat2","prowebm"]
    let area = ["redes","redes","redes","redes","Base de datos","Base de datos","Base de datos","Programacion","Programacion","Programacion","Programacion","Programacion","Programacion","Programacion"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {//devuelve filas en la tabla
        return materias.count
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {//lo que demos clic mostrar alert controller dato de lo que es el arreglo
        let controlador = UIAlertController(title: "Semestre", message: semestre[indexPath.row], preferredStyle: .Alert)
        let btn = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        controlador.addAction(btn)
        presentViewController(controlador, animated: true, completion: nil)
        lblArea.text = area[indexPath.row]
        imgl.image = UIImage(named: img[indexPath.row]) //
     
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {//arreglo en la tabla ler cuando usa scroll
        let imClick = UIImage(named: img[indexPath.row])
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda")
        //let celda = tableView.dequeueReusableCellWithIdentifier("micelda") as! TableViewCellmia
        //FALTA ASIGNAR LOS DATOS DEL ARREGLO A LA CELDA QUE SE VA A REUTILIZAR
        // if celda == nil {
        //   celda = UITableViewCell(style: .Default, reuseIdentifier: "micelda")
        // }
        celda?.textLabel?.text = materias[indexPath.row] //index path indice de la tabla saber que fila estas
     //   celda.mat.text.
      //  let imFija = UIImage(named: "star-b") //llamar al arreglo
      
        //let imClick = UIImage(named: indexPath.row)
        //celda?.imageView?.image = imFija
        celda?.imageView?.image = imClick
        return celda!
        
    }
   


}

