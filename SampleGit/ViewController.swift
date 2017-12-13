//
//  ViewController.swift
//  SampleGit
//
//  Created by macbookAir on 13/12/17.
//  Copyright © 2017 macbookAir. All rights reserved.
//

import UIKit

class ViewController: UIViewController,vc2Protocol,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        cell.textLabel?.text = cityArray[indexPath.row]
        return cell
        
    }
    
    func sendDAtaBack(city: String) {
        
        print("\(city) is a great ∆∆∆∆∆∆")
        cityArray.append(city)
        tv.reloadData()
     
    }
    
    @IBOutlet var tv: UITableView!
    var cityArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tv.delegate = self
        tv.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let vc2 =  segue.destination as! ViewController2
            vc2.delegate = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

