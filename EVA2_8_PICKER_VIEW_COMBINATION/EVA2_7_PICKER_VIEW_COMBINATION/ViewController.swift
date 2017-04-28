//
//  ViewController.swift
//  EVA2_7_PICKER_VIEW_COMBINATION
//
//  Created by JOSE CARLOS on 21/03/17.
//  Copyright © 2017 JOSE CARLOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var img: [UIImage]!
    var arreglo = [0,0,0]
    var passwd = [2,3,4]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        img = [UIImage(named: "facebook")!,
               UIImage(named: "google")!,
               UIImage(named: "instagram")!,
               UIImage(named: "pinterest")!,
               UIImage(named: "twitter-xl")!]
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
        let alert = UIAlertController(title: "Conexion exitosa", message: "Correcto", preferredStyle: .Alert)
        let btn = UIAlertAction(title: "Aceptar", style: .Default, handler: nil)
        alert.addAction(btn)
        presentViewController(alert, animated: true, completion: nil)
        }
    
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }

}

