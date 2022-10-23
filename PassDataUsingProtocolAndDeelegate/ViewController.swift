//
//  ViewController.swift
//  PassDataUsingProtocolAndDeelegate
//
//  Created by Ripon sk on 23/10/22.
//

import UIKit

class ViewController: UIViewController,SendData {
   
    @IBOutlet weak var lblAge: UILabel!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblEmail: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func gotoSecond(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC
        vc?.delegat = self
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    func passdata(email: String, name: String, age: String) {
        lblEmail.text = email
        lblName.text = name
        lblAge.text = age
    }
    

}

