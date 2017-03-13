//
//  feedController.swift
//  snapChatProject
//
//  Created by Aleem on 3/13/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import Foundation
import UIKit
class feedController : UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var feedOutlet: UITableView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    var inputIntoThisFeed = String()
    
    
    override func viewDidLoad() {
        feedOutlet.dataSource = self
        feedOutlet.delegate = self
        super.viewDidLoad()
        //convert2()
        //print(counter)
       // counter = 0
        //countThreads()
    }
    var k = Int()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return threads[threadNames[section]]!.count
        
        //return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let temp = tableView.dequeueReusableCell(withIdentifier: "feedCell", for: indexPath) as? feedCell
        temp?.snapStatus.image = UIImage(named: "unread")
        temp?.snapAgeLabel.text = "Sent by Aleem Zaki"
        temp?.senderNameLabel.text = "6 minutes ago"
        return temp!
        
    }
    var counter = Int()
    func countThreads(){
        
        for _ in threads.keys {
            counter = counter + 1
            
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return threads.count
    }
    var stringArr2 = [String]()
    func convert2(){
        
        for name in threads.keys {
            //print()
            stringArr2.append(name)
            
        }
    }
    var i = Int()
    //i = 0
    func tableView( _ tableView : UITableView,  titleForHeaderInSection section: Int)->String?
    {
        print(section)
        i = 0
        for name in threads.keys {
            if section == i {
                return name
            }
            i = i + 1
        }
        
        return "clapAlong"
    }
    
    
}
