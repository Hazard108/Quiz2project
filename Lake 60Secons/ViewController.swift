//
//  ViewController.swift
//  Lake 60Secons
//
//  Created by 田中翔偉 on 2019/08/18.
//  Copyright © 2019 ManchestarCity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number:Int = 0
    
    var point:Int = 0
    var quizNumber:Int = 0
    var quizArray:[Quiz] = []
    
    @IBOutlet var quiztextView:UITextView!
    @IBOutlet var option1button:UIButton!
    @IBOutlet var option2button:UIButton!
    @IBOutlet var option3button:UIButton!
    @IBOutlet var healthbutton:UIButton!
    
    @IBOutlet var hpBar: UIProgressView!
    
    @IBOutlet var backgroundImage: UIImageView!
    
    @IBOutlet var statusTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupQuiz()
        
        showQuiz()
        
        hpBar.progress = 1.0
        hpBar.transform = hpBar.transform.scaledBy(x: 1, y: 20)
    }
    func setupQuiz(){
        let quiz1 = Quiz(text:"眼が覚めると見覚えのない風景が目に飛び込んできた。まるで絵画のような神秘的な森に降り立ったようだ。幸い日光が多く降り注いでくれている。暗い森の奥だったら不安にさいなまれて死んでいただろう。混乱していたので事態をつかむのに時間がかかったがだんだんと思い出してきた。私は昨日まで一国のトップであった。我が国の研究員達が開発したこのバーチャル世界に世界を救うために送られたのだ。研究員から受けた説明はこうだ。「この世界では現実と同じようにあらゆる死の可能性があります。くれぐれも気をつけてください。また、この世界であなたがやらなくてはいけない事は明確に私達がお伝えすることはできません。なぜなら現実の問題がメタファー的にあなたの身に降りかかるからです。」　　　　　　　　　　　　　　　　　　　　　　イマイチ理解できないのでとりあえず行動してみよう。名残惜しいがずっとここにいる訳にはいかない。日が出ているうちに雨風がしのげるところを見つけなくては。", option1: "北に行く", option2: "あえて留まる",option3: "東に行く")
           quiz1.image = UIImage(named: "bg1.jpg")
        
       
            
            
            
            quizArray.append(quiz1)
           
            
            
            quizArray = Quiz.shuffle(QuizArray: quizArray)
    }
    func showQuiz(){
        quiztextView.text = quizArray[quizNumber].text
        option1button.setTitle(quizArray[quizNumber].option1, for: .normal)
        option2button.setTitle(quizArray[quizNumber].option2, for: .normal)
        option3button.setTitle(quizArray[quizNumber].option3, for: .normal)
        
        backgroundImage.image = quizArray[quizNumber].image
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
    
    @IBAction func option1() {
        UIView.animate(withDuration: 2, animations: {
            self.hpBar.progress = 0.6
            self.hpBar.layoutIfNeeded()
        }) { (finished) in
            if finished == true {
                self.performSegue(withIdentifier: "toPage2", sender: nil)
            }
        }
    }
    @IBAction func puls(){
        number = number + Int(0.2)
    }

        
    }
   
    
    





