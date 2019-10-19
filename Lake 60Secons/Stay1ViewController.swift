//
//  Stay1ViewController.swift
//  Lake 60Secons
//
//  Created by 田中翔偉 on 2019/08/19.
//  Copyright © 2019 ManchestarCity. All rights reserved.
//

import UIKit

class Stay1ViewController: UIViewController {
    
    var point:Int = 0
    @IBOutlet var quiztextView:UITextView!
    @IBOutlet var option1button:UIButton!
    @IBOutlet var option2button:UIButton!
    @IBOutlet var option3button:UIButton!
    
    var quizNumber:Int = 0
    var quizArray:[Quiz] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        setupQuiz()
        
        showQuiz()
    }
    func setupQuiz(){
        let quiz = Quiz(text:"探索しなくて正解だった。体力も温存できたし、体は絶好調だ。昨日は快晴で綺麗な星も見れた。よくよく考えるともう何十年もこんなにぼーっと星をみるなんて事はして居ていないな。毎日なだれのように仕事や問題が起きていき、それを解決しなくてはならなかった。ここでの生活は楽しいものになるのかもしれない。では、今日からは探索していこう。", option1: "森の奥に行く", option2: "海に行く",option3: "空に行く")
        
        
        quizArray.append(quiz)
    }
    
    func showQuiz(){
        quiztextView.text = quizArray[quizNumber].text
        option1button.setTitle(quizArray[quizNumber].option1, for: .normal)
        option2button.setTitle(quizArray[quizNumber].option2, for: .normal)
        option3button.setTitle(quizArray[quizNumber].option3, for: .normal)
        
      
        
    }
    func resetQuiz(){
        point = 0
        quizNumber = 0
        self.quizArray = Quiz.shuffle(QuizArray: self.quizArray)
        self.showQuiz()
    }
    func updateQuiz(){
        quizNumber = quizNumber + 1
        
        if quizNumber == quizArray.count{
            let alertText = "\(quizArray.count)問中、\(point)問正解でした。。"
            let alertcontroller = UIAlertController(title: "結果", message: alertText, preferredStyle: .alert)
            
            
            let okAction = UIAlertAction(title: "OK",style: .default,
                                         handler: {(action)in
                                            self.resetQuiz()
            })
            alertcontroller.addAction(okAction)
            self.present(alertcontroller,animated: true, completion: nil)
            
        }else{
            showQuiz()
            
        }
        
}
}
