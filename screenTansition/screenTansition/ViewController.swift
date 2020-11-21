//
//  ViewController.swift
//  screenTansition
//
//  Created by Training on 2020/11/14.
//  Copyright © 2020 training. All rights reserved.
//ボタンタッチ遷移

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func Action(_ sender: Any) {
        count = count + 1
        label.text = String(count)
        if count == 10{
            //count = 0
            //プッシュとモーダル遷移ープッシュはタスク進行　モーダルはタスク保管の分岐　帰ってくる
            //ネクストの方NextViewController、IDをVCに、instantiateViewController-View Controllerをインスタンス化します  ,asー変数や定数の値をより具体的な型として扱う操作
            let nextVC = storyboard?.instantiateViewController(withIdentifier: "next") as! NextViewController
            nextVC.count2 = count
           //pushViewController()
            navigationController?.pushViewController(nextVC, animated: true)
            //画面遷移,segue遷移
//            performSegue(withIdentifier: "next", sender: nil)
        }
    }
    //performSegueが呼ばれると呼ばれる,destination
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let nextVC = segue.destination as! NextViewController
//        print(count)
//        //カウント渡し
//        nextVC.count2 = count
//    }
}

