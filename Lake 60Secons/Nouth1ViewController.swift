//
//  NouthViewController.swift
//  Lake 60Secons
//
//  Created by 田中翔偉 on 2019/08/19.
//  Copyright © 2019 ManchestarCity. All rights reserved.
//

import UIKit

class NouthViewController: UIViewController {
    var number:Int = 0
    
    @IBOutlet var quiztextView:UITextView!
    @IBOutlet var option1button:UIButton!
    @IBOutlet var option2button:UIButton!
    @IBOutlet var option3button:UIButton!
    @IBOutlet var healthbutton:UIButton!
    
    var quizArray:[Quiz] = []
    var quizNumber:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupQuiz()
        
        showQuiz()
    }
    func setupQuiz(){
        let quiz = Quiz(text: "とりあえず目印になりそうな物はな見当たらなかったので北に進むことにした。メタファー的な現象が既に起きているのか、起きていないのかそれはわからない。生きるにはとりあえずサバイバルをしなくては生きていけないだろう。人がいるようには思えない。次はどうするべきかな？", option1: "西に行く", option2: "東に行く", option3: "野宿する")
        
       quizArray.append(quiz)
    }
    func showQuiz(){
        quiztextView.text = quizArray[quizNumber].text
        option1button.setTitle(quizArray[quizNumber].option1, for: .normal)
        option2button.setTitle(quizArray[quizNumber].option2, for: .normal)
        option3button.setTitle(quizArray[quizNumber].option3, for: .normal)
        
       
    }
    @IBAction func puls(){
        number = number + Int(0.2)

   

}
}
