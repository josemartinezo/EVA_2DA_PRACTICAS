//
//  mentaViewController.swift
//  ECA2_9_SEGUE
//
//  Created by JOSE CARLOS on 23/03/17.
//  Copyright © 2017 JOSE CARLOS. All rights reserved.
//

import UIKit

class mentaViewController: UIViewController {

    @IBOutlet weak var lblDatos: UILabel!
    var sTexto = ""
    //outlet de la etiqueta de la interfaz
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDatos.text = sTexto
        //se asigna el valor de la variable al label cuando se selecciona la pantalla
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
