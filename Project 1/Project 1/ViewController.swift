//
//  ViewController.swift
//  Project 1
//
//  Created by Rinaldi-Tierno, Veronica A on 2/20/19.
//  Copyright © 2019 Rinaldi-Tierno, Veronica A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var wallet:Int = 0
    var praise:Int = 0
    var volunteer:Int = 0
    var stranger:Int = 0
    var thanks:Int = 0
    var total:Int = 0
    var destination:String = "try"
    //self.view.backgroundColor = UIColor.lightGray
    
  
    
    //OUTLETS
    
//text box for "yes and no"
    @IBOutlet weak var myTextbox: UITextField!
    
//Where the text answer will go (SAME AS TOTAL ON EATERQUIZ)
    @IBOutlet weak var myDestination: UILabel!
    
//Where the pic answer will go
    @IBOutlet weak var myPic: UIImageView!
    
    //OUTLETS

    
    
 //ACTIONS
    
//SWITCHES
    
    @IBAction func myWallet(_ sender: UISwitch) {
        if sender.isOn {
            wallet = 1
        }
        else {
            wallet = 0
        }
    }
    
    @IBAction func myPraise(_ sender: UISwitch) {
        if sender.isOn {
            praise = 1
        }
        else {
            praise = 0
        }
    }
    
    @IBAction func myVolunteer(_ sender: UISwitch) {
        if sender.isOn {
            volunteer = 1
        }
        else {
            volunteer = 0
        }
    }
    
    @IBAction func myStranger(_ sender: UISwitch) {
        if sender.isOn {
            stranger = 1
        }
        else {
            stranger = 0
        }
    }
    
    @IBAction func myThanks(_ sender: UISwitch) {
        if sender.isOn {
            thanks = 1
        }
        else {
            thanks = 0
        }
    }
    
    

//SWITCHES
    
//Submit buttom FOR TEXT BOX
    
    @IBAction func myTextsubmit(_ sender: UIButton) {
        destination = myTextbox.text!
        myTextbox.resignFirstResponder()
        if(destination == "yes") {
            myDestination.text = "Please answer the questions above."
            myPic.image = UIImage(named: "heavenorhell")
        }
       else if(destination == "no")  {
           myDestination.text = "error: nonbeliever"
            myPic.image = UIImage(named: "nogod")
      }
        //myDestination.text = destination
        
        else {
         myDestination.text = "Type 'yes' or 'no'"
        }
    }

    
//Submit button FOR SWITCHES
    
    @IBAction func mySubmit(_ sender: UIButton) {
        total = wallet + praise + volunteer + stranger + thanks
        if(total <= 2) {
            myDestination.text = "You're going to Hell, kid!"
            myPic.image = UIImage(named: "hell")
        }
        else if(total > 2 && total <= 3){
            myDestination.text = "You're going to Heaven, woohoo!"
            myPic.image = UIImage(named: "Heaven")
    }
    

    //ACTIONS
    
    
        func viewDidLoad() {
        super.viewDidLoad()
        }
    }

}

