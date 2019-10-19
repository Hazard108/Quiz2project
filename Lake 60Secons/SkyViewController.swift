//
//  SkyViewController.swift
//  Lake 60Secons
//
//  Created by 田中翔偉 on 2019/09/01.
//  Copyright © 2019 ManchestarCity. All rights reserved.
//

import UIKit

class SkyViewController: UIViewController {
    
    var quizNumber:Int = 0
    var quizArray:[Quiz] = []
    
    @IBOutlet var quiztextView:UITextView!
    @IBOutlet var option1button:UIButton!
    @IBOutlet var option2button:UIButton!
    @IBOutlet var option3button:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupQuiz()
        
        showQuiz()
        
    }
    func setupQuiz(){
        let quiz1 = Quiz(text:"空に続いている気流に乗ることに成功した。しかし、きてみたはいいが楽しい気分を味わえただけで食料などの収穫はない。", option1: "今来た気流から帰る", option2: "留まる",option3: "別の気流から帰る")
        
        
        
        
        
        
        quizArray.append(quiz1)
        
        
        
        quizArray = Quiz.shuffle(QuizArray: quizArray)
    }
    func showQuiz(){
        quiztextView.text = quizArray[quizNumber].text
        option1button.setTitle(quizArray[quizNumber].option1, for: .normal)
        option2button.setTitle(quizArray[quizNumber].option2, for: .normal)
        option3button.setTitle(quizArray[quizNumber].option3, for: .normal)
        
        
    
    

   
}
}
