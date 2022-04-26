//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Abel Masila on 27/04/2022.
//

import UIKit

class ColorsDetailVC: UIViewController {

    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()


        view.backgroundColor = color ?? .blue
        // Do any additional setup after loading the view.
    }
    


}
