/**
* FILE:
* LayoutEssentials/LayoutEssentials/ViewController.swift */

//  Created by Keith Harrison https://useyourloaf.com
//  Copyright (c) 2018 Keith Harrison. All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are met:
//
//  1. Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//
//  2. Redistributions in binary form must reproduce the above copyright
//  notice, this list of conditions and the following disclaimer in the
//  documentation and/or other materials provided with the distribution.
//
//  3. Neither the name of the copyright holder nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
//  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
//  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
//  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
//  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
//  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
//  POSSIBILITY OF SUCH DAMAGE.

//  Modified by ignasiperez.com on 07/05/2021.


import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var greenView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Ch16.4.7.1 CLIP TO BOUNDS
    greenView.clipsToBounds = true
    
    
    // Ch16.4.9 APPLY TRANSFORM TO ROTATE OR SCALE
    // Rotate by 45 degrees (angle in radians)
    greenView.transform =
      CGAffineTransform(rotationAngle: CGFloat.pi/4)
    
    // Scale width x 2 and height x 0.5
    greenView.transform =
      CGAffineTransform(scaleX: 2, y: 0.5)
    
    // Reset transform to identity
    greenView.transform = CGAffineTransform.identity
    
    
    // Ch16.4.10 USE FRAME, BOUNDS AND CENTER TO MANAGE SIZE AND POSITION
    // Use frame to set initial size and position of view
    let greenView = UIView(frame: CGRect(x: 25,
                                         y: 25,
                                         width: 125,
                                         height: 125))
    
    print("greenView.frame.width \(greenView.frame.width)")
    
    // Use bounds to change size of a view without moving // center of view
    greenView.bounds.size = CGSize(width: 50,
                                   height: 50)

    // Use center to move a view
    greenView.center = CGPoint(x: 100,
                               y: 100)
    
    
    // Ch16.4.11 CORE GRAPHICS DATA TYPES
    // You’ll save yourself some casting if you make your constants and variables of type CGFloat
    let spacing: CGFloat = 25.0
    let padding: CGFloat = 8.0
    
    // If you mix types you will need to cast to CGFloat
    let offset = 10 // Int by default
    let x = padding + CGFloat(offset) // x is of type CGFloat
    
    
    // Ch16.4.11.3 CGSize FOR WIDTH AND HEIGHT
    let size = CGSize(width: 325, height: 175)
    
    
    // Ch16.4.11.4 CGRect FOR RECTANGLES
    let origin = CGPoint(x: 25, y: 25)
    let size1 = CGSize(width: 325, height: 175)
    
    let rect1 = CGRect(origin: origin, size: size1)
    
    let rect2 = CGRect(x: 25,
                       y: 25,
                       width: 325,
                       height: 175)

    
    // Ch16.4.11.5 FUNCTIONS FOR WORKING WITH INSETS, OFFSETS, INTERSECTIONS AND UNIONS
    let container = CGRect(x: 100, y: 100, width: 200, height: 100)
    let inset = container.insetBy(dx: 20, dy: 20)
    // {x 120 y 120 w 160 h 60}

    let offset2 = container.offsetBy(dx: 20, dy: 20)
    // {x 120 y 120 w 200 h 100}

    
    // Ch16.4.11.6 EACH STRUCT HAS A STATIC TYPE PROPERTY TO REPRESENT ZERO
    let zeroPoint = CGPoint.zero // {x 0 y 0}
    let zeroSize = CGSize.zero // {w 0 y 0}
    let zeroRect = CGRect.zero // {x 0 y 0 w 0 h 0}


    
  }

}

