//
//  SecondViewController.swift
//  iOSChallenge
//
//  Created by Nirmal Dalal on 2018-04-06.
//  Copyright © 2018 Nirmal Dalal. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{
    
    var username:String = "";
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func img_tap(_ sender: Any)
    {
        alert(message: "Hello " + username);
    }
    

    override func didReceiveMemoryWarning()
    {
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
