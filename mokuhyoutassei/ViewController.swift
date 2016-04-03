//
//  ViewController.swift
//  mokuhyoutassei
//
//  Created by 石森愛海 on 2016/04/02.
//  Copyright © 2016年 石森愛海. All rights reserved.
//

import UIKit
import Alamofire
import SWXMLHash

class ViewController: UIViewController {
    
    @IBAction func hensati () {
        
    }
    
    @IBAction func kennsaku () {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "http://webservice.recruit.co.jp/shingaku/school/v1/"
        
        let parameters = [
            "key": "sample",
            "keyword": "数学"
        ]
        let testpara = [
        
        "key": "47bbd742be749629",
    
        "keyword": "東京"
        
        ]
        
        Alamofire.request(.GET, urlString, parameters: testpara)
            .response { (request, response, data, error) in
                let xml = SWXMLHash.parse(data!)
                //print(xml)
                print(xml["results"]["school"][0]["name"].element!.text!)
        }

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

