//
//  ViewController.swift
//  LeaveAndNotifyLesson
//
//  Created by UrataHiroki on 2021/11/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dispatchGroup = DispatchGroup()
        let dispatchQueue = DispatchQueue(label: "test",attributes: .concurrent)
        
        dispatchGroup.enter()
        dispatchQueue.async {
            
            print("testMove開始")
            self.testMove()
            dispatchGroup.leave()
        }
        
        dispatchGroup.notify(queue: .main){
            
            print("testMove終了")
        }
    }


}

extension ViewController{
    
    private func testMove(){
        
        for count in 0...20{
            
            print(String(count))
        }
    }
}
