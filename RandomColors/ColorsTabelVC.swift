//
//  ColorsTabelVC.swift
//  RandomColors
//
//  Created by Abel Masila on 27/04/2022.
//

import UIKit

class ColorsTabelVC: UIViewController {
    var colors: [UIColor] = []

    enum Cells {
        static let colorCell = "ColorCell"
    }
    enum segues {
        static let toDetail = "ToColorsDetailVC"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    }

    func addRandomColors(){
        for _ in 0..<50 {
            colors.append(.random())
        }
    }

   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
}


extension ColorsTabelVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }


        cell.backgroundColor = colors[indexPath.row]

        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]

        performSegue(withIdentifier: segues.toDetail, sender: color)
    }
}
