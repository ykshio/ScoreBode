//
//  SohtViewController.swift
//  ScoreBode
//
//  Created by 塩澤 悠希 on 2019/12/28.
//  Copyright © 2019 塩澤 悠希. All rights reserved.
//

import UIKit

class SohtViewController: UIViewController {
    @IBOutlet weak var labelteam1: UILabel!
    @IBOutlet weak var labelteam2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var labelgc: UILabel!
    @IBOutlet weak var labelgc2: UILabel!
    @IBOutlet weak var labelpl: UILabel!
    @IBOutlet weak var labelgl: UILabel!
    @IBOutlet weak var labelpl1: UILabel!
    @IBOutlet weak var labelpl2: UILabel!
    @IBOutlet weak var labelpl3: UILabel!
    @IBOutlet weak var labelpl4: UILabel!
    @IBOutlet weak var labelpl5: UILabel!
    @IBOutlet weak var labelpl6: UILabel!
    @IBOutlet weak var labelpl7: UILabel!
    @IBOutlet weak var labelpl8: UILabel!
    @IBOutlet weak var labelpl9: UILabel!
    @IBOutlet weak var labelgr: UILabel!
    @IBOutlet weak var labelpr: UILabel!
    @IBOutlet weak var labelpr1: UILabel!
    @IBOutlet weak var labelpr2: UILabel!
    @IBOutlet weak var labelpr3: UILabel!
    @IBOutlet weak var labelpr4: UILabel!
    @IBOutlet weak var labelpr5: UILabel!
    @IBOutlet weak var labelpr6: UILabel!
    @IBOutlet weak var labelpr7: UILabel!
    @IBOutlet weak var labelpr8: UILabel!
    @IBOutlet weak var labelpr9: UILabel!
    @IBOutlet weak var labell: UILabel!
    @IBOutlet weak var labelr: UILabel!
    var pr :Int = 0
    var pl :Int = 0
    var gc: Int = 1
    var gr: Int = 0
    var gl :Int = 0
    var gp :Int = 4
    var mp : Int = 3
    var mp2 :Int = 3
    var cn1 :String!
    var cn2 :String!
    var cp :Int = 0
    var cg : Int = 0
    var c1 :String!
    var c2 :String!
    var c3 :String!
    var c4 :String!
    var c5 :String!
    var c6 :String!
    var c7 :String!
    var c8 :String!
    var c9 :String!
    var ct :String!
    var srs :Int = 0
    var csrs :String!
    var chn : Int = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func chgame(_ sender: Any) {
              
              switch (sender as AnyObject).selectedSegmentIndex {
              case 0:
                 mp = 3
               mp2 = mp
                 
              case 1:
                mp = 4
               mp2 = mp
               
              case 2:
               mp = 5
               mp2 = mp
               
              case 3:
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
    @IBAction func enterTapped3(_ sender: Any) {
         var alertTextField: UITextField?

         let alert = UIAlertController(
             title: "Edit Name",
             message: "Enter new name",
             preferredStyle: UIAlertController.Style.alert)
         alert.addTextField(
             configurationHandler: {(textField: UITextField!) in
                 alertTextField = textField
                 textField.text = self.label3.text
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
                     self.label3.text = text
                 }
             }
         )

         self.present(alert, animated: true, completion: nil)
     }
     @IBAction func enterTapped4(_ sender: Any) {
         var alertTextField: UITextField?

         let alert = UIAlertController(
             title: "Edit Name",
             message: "Enter new name",
             preferredStyle: UIAlertController.Style.alert)
         alert.addTextField(
             configurationHandler: {(textField: UITextField!) in
                 alertTextField = textField
                 textField.text = self.label4.text
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
                     self.label4.text = text
                 }
             }
         )

         self.present(alert, animated: true, completion: nil)
     }
     
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           // Dispose of any resources that can be recreated.
       }
    
    
    @IBAction func plb(_ sender: UIButton) {
        pl += 1
        labelpl.text = String(pl)
        if gc == 1{
            labelpl1.text = String(pl)
        }
        if gc == 2{
                   labelpl2.text = String(pl)
               }
        if gc == 3{
                   labelpl3.text = String(pl)
               }
        if gc == 4{
                   labelpl4.text = String(pl)
               }
        if gc == 5{
                   labelpl5.text = String(pl)
               }
        if gc == 6{
            labelpl6.text = String(pl)
        }
        if gc == 7{
            labelpl7.text = String(pl)
        }
        if gc == 8{
            labelpl8.text = String(pl)
        }
        if gc == 9{
            labelpl9.text = String(pl)
        }
        if pr == pl && pr == gp - 1{
            gp += 1
        }
        if gr == gl && gr == mp - 1 {
            gp = 7
            
        }
        if gl == mp - 1 && gl == gr{
            if(pl + pr) % 2 == 0{
                csrs = labell.text
                labell.text = labelr.text
                labelr.text = csrs
            }
        }
        if pl == gp{
            gl += 1
            pl = 0
            pr = 0
            gc += 1
            labelgc.text = String(gc)
            labelgc2.text = String(gc)
            labelgl.text = String(gl)
             labelpl.text = String(pl)
            labelpr.text = String(pr)
            
            
            if gc % 2 == 0 /*&& gl < mp - 1 */{
                cn1 = label1.text
                label1.text = label3.text
                label3.text = cn1
                cn2 = label2.text
                label2.text = label4.text
                label4.text = cn2
                c1 = labelpl1.text
                labelpl1.text = labelpr1.text
                labelpr1.text = c1
                c2 = labelpl2.text
                labelpl2.text = labelpr2.text
                labelpr2.text = c2
                c3 = labelpl3.text
                labelpl3.text = labelpr3.text
                labelpr3.text = c3
                c4 = labelpl4.text
                labelpl4.text = labelpr4.text
                labelpr4.text = c4
                c5 = labelpl5.text
                labelpl5.text = labelpr5.text
                labelpr5.text = c5
                c6 = labelpl6.text
                labelpl6.text = labelpr6.text
                labelpr6.text = c6
                c7 = labelpl7.text
                labelpl7.text = labelpr7.text
                labelpr7.text = c7
                c8 = labelpl8.text
                labelpl8.text = labelpr8.text
                labelpr8.text = c8
                c9 = labelpl9.text
                labelpl9.text = labelpr9.text
                labelpr9.text = c9
                cp = pr
                pr = pl
                pl = cp
                cg = gl
                gl = gr
                gr = cg
                labelgr.text = String(gr)
                labelgl.text = String(gl)
                 labelpl.text = String(pl)
                labelpr.text = String(pr)
                ct = labelteam1.text
                labelteam1.text = labelteam2.text
                labelteam2.text = ct
                chn += 1
            }
            if gc % 2 == 1 /*&& gl < mp*/{
                csrs = labell.text
                labell.text = labelr.text
                labelr.text = csrs
            }
            gp = 4
        }
        
        if gl == mp {
            let alert = UIAlertController(
                title: "team1",
             message: "Winner!",
            preferredStyle: UIAlertController.Style.alert)
             alert.addAction(
             UIAlertAction(
             title: "OK",
             style: UIAlertAction.Style.cancel,
             handler: nil))
             self.present(alert, animated: true, completion: nil)
            }
        if gr == mp {
        let alert = UIAlertController(
            title: "team1",
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
    @IBAction func prb(_ sender: UIButton) {
        pr += 1
        labelpr.text = String(pr)
        if gc == 1{
            labelpr1.text = String(pr)
        }
        if gc == 2{
                   labelpr2.text = String(pr)
               }
        if gc == 3{
                   labelpr3.text = String(pr)
               }
        if gc == 4{
                  labelpr4.text = String(pr)
               }
        if gc == 5{
                  labelpr5.text = String(pr)
               }
        if gc == 6{
           labelpr6.text = String(pr)
        }
        if gc == 7{
           labelpr7.text = String(pr)
        }
        if gc == 8{
           labelpr8.text = String(pr)
        }
        if gc == 9{
           labelpr9.text = String(pr)
        }
        if pr == pl && pr == gp - 1{
            gp += 1
        }
        if gr == gl && gr == mp - 1 {
            gp = 7
            
        }
        if gl == mp - 1 && gl == gr{
            if pl + pr == 2 && pl + pr == 6 && pl + pr == 10 && pl + pr == 14{
                cn1 = label1.text
                label1.text = label3.text
                label3.text = cn1
                cn2 = label2.text
                label2.text = label4.text
                label4.text = cn2
                c1 = labelpl1.text
                labelpl1.text = labelpr1.text
                labelpr1.text = c1
                c2 = labelpl2.text
                labelpl2.text = labelpr2.text
                labelpr2.text = c2
                c3 = labelpl3.text
                labelpl3.text = labelpr3.text
                labelpr3.text = c3
                c4 = labelpl4.text
                labelpl4.text = labelpr4.text
                labelpr4.text = c4
                c5 = labelpl5.text
                labelpl5.text = labelpr5.text
                labelpr5.text = c5
                c6 = labelpl6.text
                labelpl6.text = labelpr6.text
                labelpr6.text = c6
                c7 = labelpl7.text
                labelpl7.text = labelpr7.text
                labelpr7.text = c7
                c8 = labelpl8.text
                labelpl8.text = labelpr8.text
                labelpr8.text = c8
                c9 = labelpl9.text
                labelpl9.text = labelpr9.text
                labelpr9.text = c9
                cp = pr
                pr = pl
                pl = cp
                cg = gl
                gl = gr
                gr = cg
                labelgr.text = String(gr)
                labelgl.text = String(gl)
                 labelpl.text = String(pl)
                labelpr.text = String(pr)
                ct = labelteam1.text
                labelteam1.text = labelteam2.text
                labelteam2.text = ct
                chn += 1
            }
        else if(pl + pr) % 2 == 0{
            csrs = labell.text
            labell.text = labelr.text
            labelr.text = csrs
        }
        }
        if pr == gp{
            gr += 1
            pl = 0
            pr = 0
            gc += 1
            labelgc.text = String(gc)
            labelgc2.text = String(gc)
            labelgr.text = String(gr)
             labelpl.text = String(pl)
            labelpr.text = String(pr)
            
            
        
        if gc % 2 == 0 /*&& gr < mp - 1*/{
            cn1 = label1.text
            label1.text = label3.text
            label3.text = cn1
            cn2 = label2.text
            label2.text = label4.text
            label4.text = cn2
            c1 = labelpl1.text
            labelpl1.text = labelpr1.text
            labelpr1.text = c1
            c2 = labelpl2.text
            labelpl2.text = labelpr2.text
            labelpr2.text = c2
            c3 = labelpl3.text
            labelpl3.text = labelpr3.text
            labelpr3.text = c3
            c4 = labelpl4.text
            labelpl4.text = labelpr4.text
            labelpr4.text = c4
            c5 = labelpl5.text
            labelpl5.text = labelpr5.text
            labelpr5.text = c5
            c6 = labelpl6.text
            labelpl6.text = labelpr6.text
            labelpr6.text = c6
            c7 = labelpl7.text
            labelpl7.text = labelpr7.text
            labelpr7.text = c7
            c8 = labelpl8.text
            labelpl8.text = labelpr8.text
            labelpr8.text = c8
            c9 = labelpl9.text
            labelpl9.text = labelpr9.text
            labelpr9.text = c9
            cp = pr
            pr = pl
            pl = cp
            cg = gl
            gl = gr
            gr = cg
            labelgr.text = String(gr)
            labelgl.text = String(gl)
             labelpl.text = String(pl)
            labelpr.text = String(pr)
            ct = labelteam1.text
            labelteam1.text = labelteam2.text
            labelteam2.text = ct
            chn += 1
            
        }
            
        if gc % 2 == 1 /*&& gr < mp*/{
            csrs = labell.text
            labell.text = labelr.text
            labelr.text = csrs
        }
            gp = 4
    }
        if gr == mp {
        let alert = UIAlertController(
            title: "team2",
         message: "Winner!",
        preferredStyle: UIAlertController.Style.alert)
         alert.addAction(
         UIAlertAction(
         title: "OK",
         style: UIAlertAction.Style.cancel,
         handler: nil))
         self.present(alert, animated: true, completion: nil)
        }
        if gl == mp {
        let alert = UIAlertController(
            title: "team2",
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
    @IBAction func newgame(_ sender: UIButton) {
        pr = 0
        pl = 0
        gr = 0
        gl = 0
        gc = 1
        labelgc.text = String(gc)
        labelgc2.text = String(gc)
        labelgr.text = String(gr)
        labelgl.text = String(gl)
         labelpl.text = String(pl)
        labelpr.text = String(pr)
        labelpr1.text = String(pr)
        labelpr2.text = String(pr)
        labelpr3.text = String(pr)
        labelpr4.text = String(pr)
        labelpr5.text = String(pr)
        labelpr6.text = String(pr)
        labelpr7.text = String(pr)
        labelpr8.text = String(pr)
        labelpr9.text = String(pr)
        labelpl1.text = String(pl)
        labelpl2.text = String(pl)
        labelpl3.text = String(pl)
        labelpl4.text = String(pl)
        labelpl5.text = String(pl)
        labelpl6.text = String(pl)
        labelpl7.text = String(pl)
        labelpl8.text = String(pl)
        labelpl9.text = String(pl)
        srs = 0
        labell.text = " "
        labelr.text = " "
        if chn % 2 == 1 {
            cn1 = label1.text
            label1.text = label3.text
            label3.text = cn1
            cn2 = label2.text
            label2.text = label4.text
            label4.text = cn2
            ct = labelteam1.text
            labelteam1.text = labelteam2.text
            labelteam2.text = ct
            chn = 0
        }
        
        
    }
    
    @IBAction func chcoat(_ sender: UIButton) {
        cn1 = label1.text
        label1.text = label3.text
        label3.text = cn1
        cn2 = label2.text
        label2.text = label4.text
        label4.text = cn2
        c1 = labelpl1.text
        labelpl1.text = labelpr1.text
        labelpr1.text = c1
        c2 = labelpl2.text
        labelpl2.text = labelpr2.text
        labelpr2.text = c2
        c3 = labelpl3.text
        labelpl3.text = labelpr3.text
        labelpr3.text = c3
        c4 = labelpl4.text
        labelpl4.text = labelpr4.text
        labelpr4.text = c4
        c5 = labelpl5.text
        labelpl5.text = labelpr5.text
        labelpr5.text = c5
        c6 = labelpl6.text
        labelpl6.text = labelpr6.text
        labelpr6.text = c6
        c7 = labelpl7.text
        labelpl7.text = labelpr7.text
        labelpr7.text = c7
        c8 = labelpl8.text
        labelpl8.text = labelpr8.text
        labelpr8.text = c8
        c9 = labelpl9.text
        labelpl9.text = labelpr9.text
        labelpr9.text = c9
        cp = pr
        pr = pl
        pl = cp
        cg = gl
        gl = gr
        gr = cg
        labelgr.text = String(gr)
        labelgl.text = String(gl)
         labelpl.text = String(pl)
        labelpr.text = String(pr)
        ct = labelteam1.text
        labelteam1.text = labelteam2.text
        labelteam2.text = ct
        csrs = labell.text
        labell.text = labelr.text
        labelr.text = csrs
        chn += 1
        
        
    }
    
    @IBAction func rb(_ sender: UIButton) {
        if srs == 0{
            labelr.text = "serve"
            labell.text = "receive"
        }
        srs += 1
    }
    @IBAction func lb(_ sender: UIButton) {
        if srs == 0{
            labell.text = "serve"
            labelr.text = "receive"
        }
        srs += 1
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
