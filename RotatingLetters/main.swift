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
while 1 == 1 {
    
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
    
    // if we got to this point, we know the input is good
    break   //quit the while loop and begin the PROCESS section
    
}








