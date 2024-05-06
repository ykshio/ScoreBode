//
//  sViewController.swift
//  ScoreBode
//
//  Created by 塩澤 悠希 on 2019/12/24.
//  Copyright © 2019 塩澤 悠希. All rights reserved.
//

import UIKit


    class sViewController: UIViewController {
        var timer : Timer?
        @IBOutlet weak var label1: UILabel!
        @IBOutlet weak var label2: UILabel!
        @IBOutlet weak var labelr: UILabel!
        @IBOutlet weak var labell: UILabel!
        @IBOutlet weak var labeltimeset: UILabel!
        var tl:Int! = 0
        var tr:Int! = 0
        var tc:Int = 0
        var n:Int = 0
        var namec:String!
//        var timeset:Int? = (Int)(self.label1.text)
        var timesets:String!
         var count=0
        var i:Int = -1
        var s:Int! = 0
        var m:Int! = 0
        var h:Int! = 0
        var s2:Int! = 0
        var m2:Int! = 0
        var h2:Int! = 0
        var s1:String!
        var d:Int = -1
        var rt :Int = 720
        @IBOutlet weak var d1: UILabel!
        @IBOutlet weak var hh: UILabel!
        @IBOutlet weak var mm: UILabel!
        @IBOutlet weak var ss: UILabel!
        var ts:Int = 720
        var tss:String!
        var tsm:String!
        var tsh:String!
        @IBOutlet weak var labels: UILabel!
        @IBOutlet weak var labelm: UILabel!
        @IBOutlet weak var labelh: UILabel!
        
         var alertTextField: UITextField?
        let settingKey="timer_value"


             override func viewDidLoad() {
                 super.viewDidLoad()
                 // Do any additional setup after loading the view, typically from a nib.
                ts = 720
                let settings=UserDefaults.standard
                settings.register(defaults: [settingKey : ts])
                h = ts / 3600
                m = (ts%3600)/60
                s = ts % 60
                hh.text = String(h)
                mm.text = String(m)
                ss.text = String(s)
             }
        
        @IBAction func chgame(_ sender: Any) {
            
            switch (sender as AnyObject).selectedSegmentIndex {
            case 0:
             ts = 720
             rt = ts
                let settings=UserDefaults.standard

                settings.register(defaults: [settingKey : ts])
                h = ts / 3600
                m = (ts%3600)/60
                s = ts % 60
                hh.text = String(h)
                mm.text = String(m)
                ss.text = String(s)
            case 1:
              ts = 600
              rt = ts
                let settings=UserDefaults.standard
                settings.register(defaults: [settingKey : ts])
                h = ts / 3600
                m = (ts%3600)/60
                s = ts % 60
                hh.text = String(h)
                mm.text = String(m)
                ss.text = String(s)
            case 2:
             ts = 480
             rt = ts
                let settings=UserDefaults.standard
                settings.register(defaults: [settingKey : ts])
                h = ts / 3600
                m = (ts%3600)/60
                s = ts % 60
                hh.text = String(h)
                mm.text = String(m)
                ss.text = String(s)
            case 3:
             ts = 360
             rt = ts
                let settings=UserDefaults.standard
                settings.register(defaults: [settingKey : ts])
                h = ts / 3600
                m = (ts%3600)/60
                s = ts % 60
                hh.text = String(h)
                mm.text = String(m)
                ss.text = String(s)
            default:
                print("エラ〜")
            }
        }
           
        @IBAction func reset(_ sender: UIButton) {
            ts = rt
            let settings=UserDefaults.standard
            settings.register(defaults: [settingKey : ts])
            h = ts / 3600
            m = (ts%3600)/60
            s = ts % 60
            hh.text = String(h)
            mm.text = String(m)
            ss.text = String(s)
        }
        
             @IBAction func settingButtonAction(_ sender: Any) {
                 if let nowTimer = timer{
                     if nowTimer.isValid==true{
                         nowTimer.invalidate()
                     }
                 }
                 performSegue(withIdentifier: "goSetting", sender: nil)
             }
             @IBAction func startButtonAction(_ sender: Any) {
                
                let settings=UserDefaults.standard
                settings.register(defaults: [settingKey : ts])
                h = ts / 3600
                m = (ts%3600)/60
                s = ts % 60
                hh.text = String(h)
                mm.text = String(m)
                ss.text = String(s)
                 if let nowTimer = timer {

                     if nowTimer.isValid==true{

                         return
                     }
                 }

                 timer=Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.timerInterrupt(_:)), userInfo: nil, repeats: true)
             }
             @IBAction func stopButtonAction(_ sender: Any) {
                
                 if let nowTimer=timer{

                     if nowTimer.isValid==true{
                         nowTimer.invalidate()
                     }
                 }
             }

              func displayUpdate() -> Int {

                      let  settings = UserDefaults.standard

                      let timerValue=settings.integer(forKey: settingKey)

                _=timerValue - count
                     
             
                     s = timerValue - count
                h = s / 3600
                m = (s%3600)/60
                s = s % 60
                if s==0&&m>0{
                    s += 59
                    m -= 1
                }
                if m==0&&h>0{
                           m += 59
                           h -= 1
                       }
                hh.text = String(h)
                mm.text = String(m)
                ss.text = String(s)
                    
                    if m==0&&s==0&&h==0{d += 1
                        d1.text = String(d)

                    }
                    if d==4{
                        if tl>tr{
                            let alert = UIAlertController(
                                title:label1.text, message: "Winner!",
                                                           preferredStyle: UIAlertController.Style.alert)
                                           alert.addAction(
                                               UIAlertAction(
                                                   title: "OK",
                                                   style: UIAlertAction.Style.cancel,
                                                   handler: nil))
                                           self.present(alert, animated: true, completion: nil)
                        }
                        else if tl<tr{
                            let alert = UIAlertController(
                                title:label2.text, message: "Winner!",
                                            preferredStyle: UIAlertController.Style.alert)
                                       

                            alert.addAction(
                                UIAlertAction(
                                    title: "OK",
                                    style: UIAlertAction.Style.cancel,
                                    handler: nil))
                            self.present(alert, animated: true, completion: nil)
                        }
                        else if tl==tr{
                            let alert = UIAlertController(
                                            title:"draw", message: "draw!",
                                            preferredStyle: UIAlertController.Style.alert)
                                       

                            alert.addAction(
                                UIAlertAction(
                                    title: "OK",
                                    style: UIAlertAction.Style.cancel,
                                    handler: nil))
                            self.present(alert, animated: true, completion: nil)
                        }
                    
                }
                 return s
                
                    
             }

             @objc func timerInterrupt(_ timer:Timer){
                 count += 1
                 if displayUpdate() <= 0 {
                count=0
            timer.invalidate()

    let alertController=UIAlertController(title: "finish", message: "", preferredStyle: .alert)

    let defaultAction = UIAlertAction(title:"OK",style: .default,handler:nil)

    alertController.addAction(defaultAction)

        present(alertController, animated: true, completion: nil)

                 }
             }
             override func viewDidAppear(_ animated: Bool) {

                 count=0

                 _ = displayUpdate()
             }

        override func didReceiveMemoryWarning() {
               super.didReceiveMemoryWarning()
               // Dispose of any resources that can be recreated.
           }
        @IBAction func bl1(_ sender: Any) {
            tl += 1
            labell.text = String(tl)
        }
        @IBAction func bl2(_ sender: Any) {
            tl += 2
            labell.text = String(tl)
        }
        @IBAction func bl3(_ sender: Any) {
            tl += 3
            labell.text = String(tl)
        }
        @IBAction func br1(_ sender: Any) {
            tr += 1
            labelr.text = String(tr)
        }
        @IBAction func br2(_ sender: Any) {
            tr += 2
            labelr.text = String(tr)
        }
        @IBAction func br3(_ sender: Any) {
            tr += 3
            labelr.text = String(tr)
        
    }
        @IBAction func change(_ sender: UIButton) {
            tc = tl
            tl = tr
            tr = tc
            namec = label1.text!
            label1.text = label2.text
            label2.text = namec
            
            labell.text = String(tl)
            labelr.text = String(tr)
            n += 1
        }
        @IBAction func buttonNew (){
    tr = 0
    tl = 0
            ts = rt
            let settings=UserDefaults.standard

            settings.register(defaults: [settingKey : ts])
            h = ts / 3600
            m = (ts%3600)/60
            s = ts % 60
            hh.text = String(h)
            mm.text = String(m)
            ss.text = String(s)
    

     labell.text = String(tl)
               labelr.text = String(tr)
            if n%2==1{
                tc = tl
                           tl = tr
                           tr = tc
                           namec = label1.text!
                           label1.text = label2.text
                           label2.text = namec
                           labell.text = String(tl)
                           labelr.text = String(tr)
                n += 1
                           
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
        //              self.labelw1.text = text
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
        //                    self.labelw2.text = text
                        }
                    }
                )

                self.present(alert, animated: true, completion: nil)
            }
        
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


