//
//  imgViewController.swift
//  EVA2_3_RESTAURANT
//
//  Created by JOSE CARLOS on 24/03/17.
//  Copyright © 2017 JOSE CARLOS. All rights reserved.
//

import UIKit

class imgViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var platillo: UILabel!
    @IBOutlet weak var nomRes: UILabel!
    
    var arreglo = [0,0]
    var passwd = [0,0]
    var passwd2 = [0,1]
    var def = [0,0]
    
    var img: [UIImage]!
    
    var img2: [UIImage]!
    
    let ing1 = ["Peperoni","Queso","Queso Derretido","Salsa","Tomate"]
    
    let ing2 = ["Jamon","Queso Derretido","Mayonesa","Miel","Cebolla"]
    
    var imgp = ""

    var num1 = 0
    var num2 = 0
    
    var im = ""

    var im2 = ""
    
    
  //  @IBOutlet weak var imgDet: UIImageView!
  //  @IBOutlet weak var nom: UILabel!
  //  @IBOutlet weak var ubic: UILabel!
  //  @IBOutlet weak var desc: UILabel!
  //  var sNom = ""
  //  var sMensa = ""
  //  var sUbi = ""
  //  var sdes = ""
        var noRs = ""
        var plat = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img = [UIImage(named: "pepe")!,
               UIImage(named: "que")!,
               UIImage(named: "fund")!,
               UIImage(named: "sals")!,
               UIImage(named: "tom")!]
        
        img2 = [UIImage(named: "jam")!,
               UIImage(named: "fund")!,
               UIImage(named: "may")!,
               UIImage(named: "miel")!,
               UIImage(named: "ceb")!]

        
        
      //  imgDet.image = UIImage(named: sNom)!
      //  nom.text = sMensa
      //  ubic.text = sUbi
      //  desc.text = sdes
        nomRes.text = noRs
        platillo.text = "Ingredientes de su " + plat
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
    
 
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2 //numero de arreglos u origenes de datos
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       
        def[component] = row
        num1 = def[0]
        num2 = def[1]
       
       // arreglo[component] = row
        
            let acMostrar = UIAlertController(title: "Su platillo "+plat+" tendra: ", message: ing1[num1]+" y "+ing2[num2] , preferredStyle: .Alert)
            let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            let acBoton2 = UIAlertAction(title: "Compartir", style: .Default, handler: comparteRest)
            acMostrar.addAction(acBoton)
            acMostrar.addAction(acBoton2)
            acMostrar.addAction(acBoton)
            presentViewController(acMostrar, animated: true, completion: nil)
        
        
    }
    
    func comparteRest(action: UIAlertAction) -> Void {
        let miTexto = "Vine a comer  " + plat + " con mis ingredientes favoritos " + ing1[num1] + " y " + ing2[num2]
        let miImagen = UIImage(named: imgp)
        let actiController = UIActivityViewController(activityItems: [miTexto, miImagen!], applicationActivities: nil)
        presentViewController(actiController,animated: true, completion : nil)
        
        // al hacer clic en el boton de compartir nos da las opciones de compartir con los datos de mitexto, mi imagen
        //y el activitycontroller que es el que hace la accion de compartir
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
      
        if component == 0{
        let image = img[row]
        let imgView = UIImageView(image: image)
        return imgView
        }else{
        let image2 = img2[row]
        let imgView2 = UIImageView(image: image2)
        return imgView2
        }
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return ing1.count
        }else{
            return ing2.count
        }
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 120
    }
    


}
