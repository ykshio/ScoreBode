//
//  ViewController.swift
//  ScoreBode
//
//  Created by 塩澤 悠希 on 2019/12/24.
//  Copyright © 2019 塩澤 悠希. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    var t1:Int! = 0
    var t2:Int! = 0
    var tc:Int! = 0
    var s1:Int! = 0
    var s2:Int! = 0
    var sc:Int! = 0
    var mp:Int! = 11
    var mp2:Int = 11
    var fp:Int = 2
    var n:Int = 0
    var namec:String = ""
    var winner:String = "Winner!"
    @IBOutlet weak var labelw: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var labelt1: UILabel!
    @IBOutlet weak var labelt2: UILabel!
    @IBOutlet weak var labels1: UILabel!
    @IBOutlet weak var labels2: UILabel!
    @IBOutlet weak var labelgc1: UILabel!
    @IBOutlet weak var labelgc2: UILabel!
    @IBOutlet weak var labeltime: UILabel!
    var t:String!
    var s:Int! = 0
    var m:Int! = 0
    var h:Int! = 0
    var ss2:Int! = 0
    var m2:Int! = 0
    var h2:Int! = 0
    var ss1:String!
    var d:Int = -1
    var timer : Timer?
    @IBOutlet weak var d1: UILabel!
    @IBOutlet weak var hh: UILabel!
    @IBOutlet weak var mm: UILabel!
    @IBOutlet weak var ss: UILabel!
    var ts:Int = 0
    var tss:String!
    var tsm:String!
    var tsh:String!
    var count=0
    @IBOutlet weak var labels: UILabel!
    @IBOutlet weak var labelm: UILabel!
    @IBOutlet weak var labelh: UILabel!
    var o : Int = 0
    
    
    
    override func viewDidLoad() {
        UIApplication.shared.isIdleTimerDisabled = true
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UIApplication.shared.isIdleTimerDisabled = true
        Timer.scheduledTimer(timeInterval: 0.5,                                         //ループなら間隔 1度きりなら発動までの秒数
                                    target: self,                                         //メソッドを持つオブジェクト
                                    selector: #selector(ViewController.timerUpdate),  //実行するメソッド
                                    userInfo: nil,                                        //オブジェクトに付けて送信する値
                                    repeats: true)                                        //繰り返し実行するかどうか
        let lablenow_time = NSDate() // 現在日時の取得

            let dateFormatter = DateFormatter()
            dateFormatter.locale = NSLocale(localeIdentifier: "en_US") as Locale? // ロケールの設定
            dateFormatter.dateFormat = "HH:mm:ss" // 日付フォーマットの設定

        //    print(dateFormatter.string(from: lablenow_time as Date)) // -> 2014/06/25 02:13:18
            t = (dateFormatter.string(from: lablenow_time as Date))
            labeltime.text = t
    
    }
    @objc func timerUpdate() {

        

        let lablenow_time = NSDate() // 現在日時の取得

        let dateFormatter = DateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US") as Locale? // ロケールの設定
        dateFormatter.dateFormat = "HH:mm:ss" // 日付フォーマットの設定

    //    print(dateFormatter.string(from: lablenow_time as Date)) // -> 2014/06/25 02:13:18
        t = (dateFormatter.string(from: lablenow_time as Date))
        labeltime.text = t
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
    /*@IBAction func i(_ sender: UIButton) {
    
    labelw.text = String("Winner!")
    }*/
    @IBAction func chgame(_ sender: Any) {
           
           switch (sender as AnyObject).selectedSegmentIndex {
           case 0:
              mp = 11
            mp2 = mp
              labelgc1.text = "game"
            labelgc2.text = "game"
           case 1:
             mp = 21
            mp2 = mp
            labelgc1.text = "game"
            labelgc2.text = "game"
           case 2:
            mp = 25
            mp2 = mp
            labelgc1.text = "set"
            labelgc2.text = "set"
           case 3:
            mp = 0
            mp2 = mp
           default:
               print("エラ〜")
           }
        
       }
    @IBAction func chset(_ sender: Any) {
        
        switch (sender as AnyObject).selectedSegmentIndex {
        case 0:
            o = 0
//           fp = 2
        case 1:
            o = 1
//          fp = 3
        case 2:
            o = 2
//         fp = 4
        case 3:
            o = 3
//            fp = -1
        default:
            print("エラ〜")
        }
        if o == 0{
            fp = 2
        }
        if o == 1{
            fp = 3
        }
        if o == 2{
            fp = 4
        }
        if o == 3{
            fp = 1
        }
    }
    
    @IBAction func change(_ sender: UIButton) {
        tc = t1
        t1 = t2
        t2 = tc
        sc = s1
        s1 = s2
        s2 = sc
        labels1.text = String(s1)
        labels2.text = String(s2)
        labelt1.text = String(t1)
        labelt2.text = String(t2)
        namec = label1.text!
        label1.text = label2.text
        label2.text = namec
        n += 1
        
        
        
    }
    
   
    @IBAction func buttont1 (){
        t1 = t1 + 1

        labelt1.text = String(t1)
        
        if t1 == t2 && t1 == mp-1{
            mp += 1
        }
        
       
        
        if t1==mp{
            t1 = 0
                   t2 = 0
                   s1 = s1 + 1

                   labels1.text = String(s1)
                   labelt1.text = String(t1)
                   labelt2.text = String(t2)
            mp = mp2}
            if s1==fp{
               

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
            }}
    @IBAction func buttont2 (){
        t2 = t2 + 1

        labelt2.text = String(t2)
        
         if t2 == t1 && t2 == mp-1 {
                    mp += 1
                    }
        if t2==mp{
         t1 = 0
                t2 = 0
                s2 = s2 + 1

                labels2.text = String(s2)
                labelt1.text = String(t1)
                labelt2.text = String(t2)
            mp = mp2}
         if s2==fp{
            

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
         }}
    @IBAction func buttons1 (){
        t1 = 0
        t2 = 0
        s1 = s1 + 1

        labels1.text = String(s1)
        labelt1.text = String(t1)
        labelt2.text = String(t2)


    }
    @IBAction func buttons2 (){
        t1 = 0
        t2 = 0
        s2 = s2 + 1

        labels2.text = String(s2)
        labelt1.text = String(t1)
        labelt2.text = String(t2)


    }
    @IBAction func buttonNew (){
        t1 = 0
        t2 = 0
        s1 = 0
        s2 = 0

        labels1.text = String(s1)
        labels2.text = String(s2)
        labelt1.text = String(t1)
        labelt2.text = String(t2)
        if n%2==1{
                   tc = t1
                   t1 = t2
                   t2 = tc
                   sc = s1
                   s1 = s2
                   s2 = sc
                   labels1.text = String(s1)
                   labels2.text = String(s2)
                   labelt1.text = String(t1)
                   labelt2.text = String(t2)
                   namec = label1.text!
                   label1.text = label2.text
                   label2.text = namec
                   n += 1
        }


    }

    

}

