//
//  SelectViewController.swift
//  DataTransfer
//
//  Created by Chi-Che Hsieh on 2018/6/20.
//  Copyright © 2018年 ppquitmax. All rights reserved.
//

import UIKit
extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }}
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }}
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }}
}

class SelectViewController: UIViewController {
    @IBOutlet weak var TamahomeButton: UIButton!
    @IBOutlet weak var HotohoriButton: UIButton!
    
    @IBAction func ChangeToShowController(_ sender: Any) {
        let button = sender as? UIButton
        if let controller = storyboard?.instantiateViewController(withIdentifier: "PhotoView") as? ShowViewController {
            controller.nameText = (button?.currentTitle)!
            present(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func BackToSelectPage(segue:UIStoryboardSegue) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /**/
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}
