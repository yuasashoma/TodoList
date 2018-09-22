    //
//  ViewController.swift
//  TODOlist
//
//  Created by 湯浅将真 on 2018/09/22.
//  Copyright © 2018年 湯浅将真. All rights reserved.
//

import UIKit

    class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return Todosettei.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let TodoCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
            TodoCell.textLabel!.text = Todosettei[indexPath.row]
            return TodoCell
        }


    override func viewDidLoad() {
        if UserDefaults.standard.object(forKey: "TodoBox") != nil {
            Todosettei = UserDefaults.standard.object(forKey: "TodoBox") as! [String]
        }

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

