//
//  imgViewController.swift
//  EVA2_3_RESTAURANT
//
//  Created by JOSE CARLOS on 24/03/17.
//  Copyright © 2017 JOSE CARLOS. All rights reserved.
//

import UIKit

class imgViewController: UIViewController {

    @IBOutlet weak var imgDet: UIImageView!
    @IBOutlet weak var nom: UILabel!
    @IBOutlet weak var ubic: UILabel!
    @IBOutlet weak var desc: UILabel!
    var sNom = ""
    var sMensa = ""
    var sUbi = ""
    var sdes = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgDet.image = UIImage(named: sNom)!
        nom.text = sMensa
        ubic.text = sUbi
        desc.text = sdes
        
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
