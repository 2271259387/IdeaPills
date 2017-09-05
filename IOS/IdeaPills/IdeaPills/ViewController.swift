//
//  ViewController.swift
//  IdeaPills
//
//  Created by 陈柏岩 on 2017/9/5.
//  Copyright © 2017年 fengx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var lastString=""
    var minRecordTime=0.5
    var startRecordTime=0.0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var butStart: UIButton!
    @IBOutlet weak var progressV: UIProgressView!
    @IBAction func butStartDown(_ sender: Any) {
        //NSLog("startRecord....")
       
        startRecord()
        
    }
    @IBAction func butStartUp(_ sender: Any) {
        //x11NSLog("endRecord....")
        endRecord()
    }
    @IBOutlet weak var label: UILabel!
    
    func startRecord(){
        var date = NSDate()
        startRecordTime = date.timeIntervalSince1970 * 1000
        NSLog("startRecord...."+"\(startRecordTime)")
    }
    func endRecord(){
        var date = NSDate()
        let curTime = date.timeIntervalSince1970 * 1000
        let mid=curTime-startRecordTime
        NSLog("endRecord...."+"\(startRecordTime)")
        if mid>minRecordTime {
            label.text = "\(mid)"
            
        }else{
            
            NSLog("to short...."+"\(mid)")

        }
        
         progressV.setProgress(Float(mid) , animated: true)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

