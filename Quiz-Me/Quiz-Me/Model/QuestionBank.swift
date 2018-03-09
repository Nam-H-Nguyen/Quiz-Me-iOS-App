//
//  QuestionBank.swift
//  Quiz-Me
//
//  Created by NomNomNam on 3/8/18.
//  Copyright © 2018 NamHNguyen. All rights reserved.
//

import Foundation

class QuestionBank {
    var scienceQuestionList = [Question]()
    
    init() {
        let singleQuestion = Question(text: "DNA stands for deoxyribonucleic acid.", correctAnswer: true)
        // #1
        scienceQuestionList.append(singleQuestion)
        // #2
        scienceQuestionList.append(Question(text: "One complete DNA molecule consists of a single helix.", correctAnswer: false))
        // #3
        scienceQuestionList.append(Question(text: "The building blocks of DNA are called nucleotides.", correctAnswer: true))
        // #4
        scienceQuestionList.append(Question(text: "One nucleotide is composed of two parts: a sugar and a nitrogen base.", correctAnswer: false))
        // #5
        scienceQuestionList.append(Question(text: "The sugar in DNA is called ribose.", correctAnswer: false))
        // #6
        scienceQuestionList.append(Question(text: "With respect to the bases, A binds with T and C binds with G.", correctAnswer: true))
        // #7
        scienceQuestionList.append(Question(text: "Complementary bases are held together by hydrogen bonds.", correctAnswer: true))
        // #8
        scienceQuestionList.append(Question(text: "With one nucleotide, the nitrogen base is attached to the phosphate group.", correctAnswer: false))
        // #9
        scienceQuestionList.append(Question(text: "The \"backbone\" or outer strands of DNA are repeating sugars and bases.", correctAnswer: false))
        // #10
        scienceQuestionList.append(Question(text: "The genetic code lies in the order of nitrogen bases.", correctAnswer: true))
        // #11
        scienceQuestionList.append(Question(text: "Four bases in a row make up one codon.", correctAnswer: false))
        // #12
        scienceQuestionList.append(Question(text: "Each codon codes for one amino acid.", correctAnswer: true))
        // #13
        scienceQuestionList.append(Question(text: "Many amino acids bonded together form a protein.", correctAnswer: true))
        // #14
        scienceQuestionList.append(Question(text: "All genetic mutations are harmful.", correctAnswer: false))
        // #15
        scienceQuestionList.append(Question(text: "Genetic mutations may be harmful, neutral, or beneficial.", correctAnswer: true))
        // #16
        scienceQuestionList.append(Question(text: "A genetic mutation always causes the production of a different protein.", correctAnswer: false))
        // #17
        scienceQuestionList.append(Question(text: "Mutagenic agents are drugs taken by a patient to treat a genetic mutation.", correctAnswer: false))
        // #18
        scienceQuestionList.append(Question(text: "Only mutations in the gametes can be passed on to children.", correctAnswer: true))
        // #19
        scienceQuestionList.append(Question(text: "A cell with 46 chromosomes has 46 DNA molecules.", correctAnswer: false))
        // #20
        scienceQuestionList.append(Question(text: "After DNA replication there are 4 genetically identical DNA molecules.", correctAnswer: false))
        
    }
}
