//
//  AddController.swift
//  TODOlist
//
//  Created by 湯浅将真 on 2018/09/22.
//  Copyright © 2018年 湯浅将真. All rights reserved.
//

//  AddController.swift
import UIKit

//変数の設置
var Todosettei = [String]()

class AddController: UIViewController {
    //テキストフィールドの設定
    @IBOutlet weak var TodoTextField: UITextField!

    //追加ボタンの設定
    @IBAction func TodoAddButten(_ sender: Any) {
        Todosettei.append(TodoTextField.text!)
        TodoTextField.text = ""
        UserDefaults.standard.set(Todosettei, forKey: "TodoBox")
    }





    //最初からあるコード
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //最初からあるコード
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
