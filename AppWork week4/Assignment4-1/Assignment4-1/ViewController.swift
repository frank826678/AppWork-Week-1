//
//  ViewController.swift
//  Assignment4-1
//
//  Created by Frank on 2018/7/27.
//  Copyright © 2018 Frank. All rights reserved.
//

// ViewModel 的好處
// 我認為這是因為要符合 MVC 的設計模式所以才會改寫成這樣 , 也為了程式碼更簡潔並且更好閱讀 ， 把 view 和 model 隔開來 ，讓他們更專注在彼此的事情上 , 讓 ViewModel 做彼此溝通的橋樑 , 並且可以格式化數據 , 可以有效避免輸入錯誤的值.

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var StationID: UILabel!
    
    @IBOutlet weak var StationName: UILabel!
    @IBOutlet weak var StationAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //接網路
        
        let url = URL(string: "https://stations-98a59.firebaseio.com/.json")
        //let request = URLRequest(url: url!)

        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        //        let session = URLSession.shared
        //let url = Bundle.main.url(forResource: "json2", withExtension: "txt") 接本機練習用json
        
        //start
        //接網路
        
        let task = session.dataTask(with: url!, completionHandler: { (data , response , error) in
            if let error = error {
                print("API 下載錯誤 \(error) ")
                return
            }
            else {
                print("下載成功")
            }
            
        } )
        
        task.resume()
        
        
        // end
        
 
        do {
            let data = try Data(contentsOf: url!)
            let jsonObj = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            // as! Dictionary<String,AnyObject>  //把資料轉成dict
            
            print(jsonObj)
            let decoder = JSONDecoder()
            
            let result = try! decoder.decode(DataResults.self, from: data)
            //print("Codable Test")
            //print(result)
            
            // 取出結果
            
//            print("-------Test------")
//            print(result.StationID)
//            print(result.StationName.En)
//            print(result.StationAddress)
            
            StationID.text = result.StationID
            StationName.text = result.StationName.En
            StationAddress.text = result.StationAddress
        
        }
        catch {
            print(error.localizedDescription)
        }
        
        //解決原本json連結(目前本機）字串陣列方法
        /*
        var ArrayId = [String]()
        var ArrayName = [String]()
        var ArrayAddress = [String]()
        
        do {
            let data = try Data(contentsOf: url!)
            let jsonObj = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                as! Array<Dictionary<String,AnyObject>>
            // 取出結果
            for p in jsonObj {
                print("ID: \(p["StationID"] as! String ) ")  //as! String 不能省略 上面是 AnyObject
                ArrayId.append(p["StationID"] as! String)
                
                if let name = p["StationName"]{
                    print("StationName: \(name["En"] as! String ) ")
                    ArrayName.append(name["En"] as! String )
                }
                
                print("StationAddress: \(p["StationAddress"] as! String ) ")
                ArrayAddress.append(p["StationAddress"] as! String )
                
                print("----------------")
            }
            
        }
        catch {
            print(error.localizedDescription)
        }
        
        print(ArrayId[2])
        print(ArrayName[2])
        print(ArrayAddress[2])
        */
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

