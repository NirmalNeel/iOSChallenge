//
//  ViewController.swift
//  iOSChallenge
//
//  Created by Nirmal Dalal on 2018-04-06.
//  Copyright © 2018 Nirmal Dalal. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var user_name: UITextField!;
    @IBOutlet weak var password: UITextField!;
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submit_form(_ sender: Any)
    {
        if ((user_name.text!.characters.count) < 8)
        {
            alert(message: "Username too short, minimum 8 characters required!", title: "Oops!");
        }
        else if (!(user_name.text!.isOnlyAlpha))
        {
            alert(message: "Only Alphabets allowed for Username!", title: "Oops!");
        }
        else if ((password.text!.characters.count) < 8)
        {
            alert(message: "Weak password, minimum 8 characters required!", title: "Oops!");
        }
        else
        {
            performSegue(withIdentifier: "segue1", sender: self);
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let secondController = segue.destination as! SecondViewController;
        secondController.username = user_name.text!;
    }
    
}

extension UIViewController
{
    
    func alert(message: String, title: String = "")
    {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}

extension String
{
    var isOnlyAlpha: Bool
    {
        //To Vog App Developers,
        //Please note that this perticular code will allow only alphabets in the text
        //Even a single space will result in failure.
        //If you like to add a space in user name text field,
        //Just add a space in the line below in square braces after A-Z
        
        return !isEmpty && range(of: "[^a-zA-Z]", options: .regularExpression) == nil
    }
}
