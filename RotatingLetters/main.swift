//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

//INPUT

//Loop forever until we get good input
var validInput = "" //outside the loop
prompt: while 1 == 1 {
    
    //Prompt the user
    print("Input word is?")
    
    //wait for input
    //make sure it is not nil
    guard let givenInput = readLine() else {
        
        //if we got here, input is nil
        //prompt again
        continue  //continue with the next interation of 'while' loop
        
    }

    // Test #2: is the input the correct length
    if givenInput.count < 1 || givenInput.count > 30 {
        
        //if we got here, input is too short or too long
        continue //prompt again
        
    }
    
    //test #3: check to ensure there is only uppercase letters and no spaces
    checking: for individualCharacter in givenInput {
        
        //DEBUG: print the character we are looking at
        print(individualCharacter)
        
        //check the character
        switch individualCharacter {
        case "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z":
         continue checking    //ok, go to next character in the string
        default:
            break prompt    //stop looking, weve found bad input
        }
        
    }
    
    // if we got to this point, we know the input is good
    validInput = givenInput
    break   //quit the while loop and begin the PROCESS section
    
}

//PROCESS
// we now have valid input that can be processed according to the remaining requirments of the scenario

var countOfGoodLetters = 0
for letter in validInput {
    
    //check each letter to make sure it's IHOZXN
    print(letter)
    if letter == "I" || letter == "H" || letter == "O" || letter == "S" || letter == "Z" || letter == "X" || letter == "N" {
        //good    keep checlking
        countOfGoodLetters += 1
        continue
    } else {
       
    }
    
    
}


//OUTPUT
//if we got here, guaranteed this is a word with only acceptable letters
if  countOfGoodLetters == validInput.count {
    print("YES")
} else {
    print("NO")
}


