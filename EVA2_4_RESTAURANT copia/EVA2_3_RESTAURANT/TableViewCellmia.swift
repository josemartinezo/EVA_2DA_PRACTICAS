//
//  TableViewCellmia.swift
//  EVA2_3_RESTAURANT
//
//  Created by JOSE CARLOS on 10/03/17.
//  Copyright © 2017 JOSE CARLOS. All rights reserved.
//

import UIKit

class TableViewCellmia: UITableViewCell {
    @IBOutlet var lblNombre: UILabel!
    @IBOutlet var lblUbica: UILabel!
    @IBOutlet var lblDesc: UILabel!
    @IBOutlet var imgImagen: UIImageView!

    //outlet de los elementos de la interfaz

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
