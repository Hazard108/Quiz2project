//
//  Quiz.swift
//  Lake 60Secons
//
//  Created by 田中翔偉 on 2019/08/18.
//  Copyright © 2019 ManchestarCity. All rights reserved.
//

import UIKit

class Quiz: NSObject {
    var text:String
    var status:String? 
    var option1:String
    var option2:String
    var option3:String
    var image: UIImage?
    
    init(text:String,option1:String,option2:String,option3:String){
        self.text = text
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
    }
    
    class func shuffle(QuizArray: [Quiz])->[Quiz]{
        var quiz = QuizArray
        var shuffledQuizArray:[Quiz] = []
        for _ in 0..<quiz.count{
            let index = Int(arc4random_uniform(UInt32(quiz.count)))
            shuffledQuizArray.append(quiz[index])
            quiz.remove(at:index)
        }
        
        return shuffledQuizArray
        
    }
}
