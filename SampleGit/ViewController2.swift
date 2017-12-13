//
//  ViewController2.swift
//  SampleGit
//
//  Created by macbookAir on 13/12/17.
//  Copyright © 2017 macbookAir. All rights reserved.
//

import UIKit
protocol vc2Protocol {
    func sendDAtaBack(city: String)
    
}

class ViewController2: UIViewController {
    @IBOutlet var cityTxt: UITextField!
    @IBAction func submitBtnAction(_ sender: Any) {
        
        
        delegate?.sendDAtaBack(city: cityTxt.text!)
        self.dismiss(animated: true, completion: nil)
    }
    var delegate : vc2Protocol?
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
