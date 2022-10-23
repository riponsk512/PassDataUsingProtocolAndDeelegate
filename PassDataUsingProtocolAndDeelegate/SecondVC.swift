//
//  SecondVC.swift
//  PassDataUsingProtocolAndDeelegate
//
//  Created by Ripon sk on 23/10/22.
//

import UIKit
protocol SendData{
    func passdata(email:String,name:String,age:String)
}
class SecondVC: UIViewController {
    @IBOutlet weak var tfName: UITextField!
    
    @IBOutlet weak var tfage: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
// Do any additional setup after loading the view.
    }
    var delegat:SendData!
    
    @IBAction func SendtoFirstVC(_ sender:Any){
        delegat.passdata(email: tfEmail.text!, name: tfName.text!, age: tfage.text!)
        self.navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
