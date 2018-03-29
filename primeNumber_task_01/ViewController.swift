//
//  ViewController.swift
//  primeNumber_task_01
//
//  Created by D7703_19 on 2018. 3. 29..
//  Copyright © 2018년 D7703_19. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    // 레이블과 텍스트필드 선언
    @IBOutlet weak var txtNum: UITextField!
    @IBOutlet weak var lblPrime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // "숫자입력" 창 띄우기
        txtNum.placeholder = "숫자입력"
        txtNum.clearButtonMode = UITextFieldViewMode.whileEditing
        txtNum.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func btCheck(_ sender: Any) {
    
        // 소수, 숫자(문자를 숫자로 바꾸기) 선언
        var isPrime = true
        let num = Int(txtNum.text!)
        
        // if문을 이용한 소수 판별
        if num == 1 {
            isPrime = false
        }

        if num != 1 && num != 2 {
            for i in 2 ..< num! {
                if num! % i == 0 {
                    isPrime = false
                }
            }
        }
        // if문을 이용한 소수 판별을 레이블에 표시
        if isPrime == true {
            lblPrime.text = "Prime number"
        } else {
            lblPrime.text = "Not Prime number"
        }
    }
    
    // 리턴을 누르면 키패드 내려가기
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtNum.resignFirstResponder()
        return true
    }
    
    // 리셋버튼을 누르면 텍스트 필드와 레이블을 리셋하기
    @IBAction func btReset(_ sender: Any) {
        txtNum.text = ""
        lblPrime.text = ""
    }
    
    
}

