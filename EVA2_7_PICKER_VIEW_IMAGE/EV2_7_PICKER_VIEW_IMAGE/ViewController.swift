//
//  ViewController.swift
//  EV2_7_PICKER_VIEW_IMAGE
//
//  Created by JOSE CARLOS on 16/03/17.
//  Copyright © 2017 JOSE CARLOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var img: [UIImage]!

    //arreglo de tipo UIImage

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        img = [UIImage(named: "facebook")!,
               UIImage(named: "google")!,
               UIImage(named: "instagram")!,
               UIImage(named: "pinterest")!,
               UIImage(named: "twitter-xl")!]
               //se cargan las imagenes al arreglo
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let image = img[row]
        let imgView = UIImageView(image: image)
        return imgView
        // carga las imagenes al pickerview 
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1 //regresa el numero de pickerview a mostrar
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return img.count //regresa el numero de elementos del pickerview utilizando el tamaño del arreglo
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //
    }

    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64 //regresa el tamaño de el row
    }

}

