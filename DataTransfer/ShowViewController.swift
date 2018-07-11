//
//  ShowViewController.swift
//  DataTransfer
//
//  Created by Chi-Che Hsieh on 2018/6/20.
//  Copyright © 2018年 ppquitmax. All rights reserved.
//

import UIKit

class ShowViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var nameText:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameLabel.text = nameText
        print(nameText)
        nameLabel.adjustsFontSizeToFitWidth = true
        nameLabel.textColor = UIColor.black
        if nameText == "鬼宿" {
            myImageView.image = #imageLiteral(resourceName: "pic01")
        } else if nameText == "星宿" {
            myImageView.image = #imageLiteral(resourceName: "pic02")
        }
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
