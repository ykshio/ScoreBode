//
//  TViewController.swift
//  ScoreBode
//
//  Created by 塩澤 悠希 on 2019/12/26.
//  Copyright © 2019 塩澤 悠希. All rights reserved.
//

import UIKit

class TViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var labell: UILabel!
    @IBOutlet weak var labelr: UILabel!
    @IBOutlet weak var labelsl: UILabel!
    @IBOutlet weak var labelsr: UILabel!
    @IBOutlet weak var labelgl: UILabel!
    @IBOutlet weak var labelgr: UILabel!
    var tr : Int = 0
    var tl : Int = 0
    var gr : Int = 0
    var gl : Int = 0
    var sr : Int = 0
       var sl : Int = 0
    var mr : Int = 0
    var ml : Int = 0
    
    var gp : Int = 4
    var gp2 : Int = 4
    var sp : Int = 6
    var sp2 :Int = 6
    var mp : Int = 2
    var mp2 :Int = 2
    var a : String = "A"
    var cn : String!
    var ct : Int = 0
    var cg : Int = 0
    var cs : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func chs(_ sender: Any) {
        
        switch (sender as AnyObject).selectedSegmentIndex {
        case 0:
          sp = 6
            sp2 = sp
        case 1 :
            sp = 8
            sp2 = sp
        default:
            print("エラ〜")
        }
     
    }
    @IBAction func chm(_ sender: Any) {
        
        switch (sender as AnyObject).selectedSegmentIndex {
        case 0:
          mp = 2
            mp2 = mp
        case 1 :
            mp = 3
            mp2 = mp
        case 2 :
            mp = -1
            mp2 = mp
        default:
            print("エラ〜")
        }
     
    }
    @IBAction func enterTapped(_ sender: Any) {
        var alertTextField: UITextField?

        let alert = UIAlertController(
            title: "Edit Name",
            message: "Enter new name",
            preferredStyle: UIAlertController.Style.alert)
        alert.addTextField(
            configurationHandler: {(textField: UITextField!) in
                alertTextField = textField
                textField.text = self.label1.text
                // textField.placeholder = "Mike"
                // textField.isSecureTextEntry = true
        })
        alert.addAction(
            UIAlertAction(
                title: "Cancel",
                style: UIAlertAction.Style.cancel,
                handler: nil))
        alert.addAction(
            UIAlertAction(
                title: "OK",
                style: UIAlertAction.Style.default) { _ in
                if let text = alertTextField?.text {
                    self.label1.text = text
                }
            }
        )

        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func enterTapped2(_ sender: Any) {
        var alertTextField: UITextField?

        let alert = UIAlertController(
            title: "Edit Name",
            message: "Enter new name",
            preferredStyle: UIAlertController.Style.alert)
        alert.addTextField(
            configurationHandler: {(textField: UITextField!) in
                alertTextField = textField
                textField.text = self.label2.text
                // textField.placeholder = "Mike"
                // textField.isSecureTextEntry = true
        })
        alert.addAction(
            UIAlertAction(
                title: "Cancel",
                style: UIAlertAction.Style.cancel,
                handler: nil))
        alert.addAction(
            UIAlertAction(
                title: "OK",
                style: UIAlertAction.Style.default) { _ in
                if let text = alertTextField?.text {
                    self.label2.text = text
                }
            }
        )

        self.present(alert, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tlb(_ sender: UIButton) {
        tl += 1
        if tl == 1 || tl == 2{
            labell.text = String(tl*15)
        }
        if tl == 3{
        labell.text = String((tl+1)*10)
        
    }
        if tr == tl && tl == gp-1{
            gp += 1
            
        }
        if tl >= 4 && tl == gp - 1 && tl == tr + 1{
            labell.text = (a)
        }
        if tl>=4 && tl == tr{
            labelr.text = " "
            labell.text = " "
        }
        if tl == gp{
            gl += 1
            tl = 0
            tr = 0
            labelgl.text = String(gl)
            labell.text = String(tl)
            labelr.text = String(tr)
            gp = gp2
        }
        if gr == gl && gr == sp - 1{
            sp += 1
            
        }
        if gl == sp {
            sl += 1
            gl = 0
            gr = 0
            labelgr.text = String(gr)
            labelgl.text = String(gl)
            labelsl.text = String(sl)
            sp = sp2
        }
        
        if sl == mp {
            let alert = UIAlertController(
                    title: label1.text,
                    message: "Winner!",
                    preferredStyle: UIAlertController.Style.alert)
               

                alert.addAction(
                    UIAlertAction(
                        title: "OK",
                        style: UIAlertAction.Style.cancel,
                        handler: nil))
               self.present(alert, animated: true, completion: nil)
        
        }
    }
    @IBAction func trb(_ sender: UIButton) {
        tr += 1
        if tr == 1 || tr == 2{
            labelr.text = String(tr*15)
        }
        if tr == 3{
            labelr.text = String((tr+1)*10)
        }
        
        if tr == tl && tr == gp-1{
            gp += 1
        }
        if tr >= 4 && tr == gp - 1{
            labelr.text = (a)
        }
        if tr>=4 && tr == tl{
            labelr.text = " "
            labell.text = " "
        }
        if tr == gp{
            gr += 1
            tr = 0
            tl = 0
            labell.text = String(tl)
            labelr.text = String(tr)
            labelgr.text = String(gr)
            gp = gp2
        }
        if gr == gl && gr == sp - 1{
            sp += 1
        }
//        if gr == gl && gl == 6{
//
//        }
        if gr == sp {
            sr += 1
            gr = 0
            gl = 0
            labelgl.text = String(gl)
            labelgr.text = String(gr)
            labelsr.text = String(sr)
            sp = sp2
        }
        if sr == mp {
            let alert = UIAlertController(
                    title: label2.text,
                    message: "Winner!",
                    preferredStyle: UIAlertController.Style.alert)
               

                alert.addAction(
                    UIAlertAction(
                        title: "OK",
                        style: UIAlertAction.Style.cancel,
                        handler: nil))
               self.present(alert, animated: true, completion: nil)
        
        }
    }
    @IBAction func NewGame(_ sender: Any) {
        tr  = 0
        tl = 0
        gr = 0
        gl  = 0
        sr = 0
        sl  = 0
        mr  = 0
        ml  = 0
        labell.text = String(tl)
        labelgl.text = String(gl)
        labelsl.text = String(sl)
        labelr.text = String(tr)
        labelgr.text = String(gr)
        labelsr.text = String(sr)
    }
    @IBAction func change(_ sender: UIButton) {
        cn = label1.text
        label1.text = label2.text
        label2.text = cn
        ct = tl
        tl = tr
        tr = ct
        cg = gl
        gl = gr
        gr = cg
        cs = sr
        sr = sl
        cs = sl
        labell.text = String(tl)
        labelgl.text = String(gl)
        labelsl.text = String(sl)
        labelr.text = String(tr)
        labelgr.text = String(gr)
        labelsr.text = String(sr)
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
