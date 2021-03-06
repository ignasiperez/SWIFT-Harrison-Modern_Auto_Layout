/**
 * FILE:
 * NSLayoutConstraint-v1/NSLayoutConstraint-v1/ViewController.swift */

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

//  Modified by Ignasi Perez on 20/05/2021.

import UIKit


class ViewController: UIViewController {
  
  private let redView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .systemPink
    return view
  } ()
  
  private let padding: CGFloat = 50.0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupView()
  }
  
  
  private func setupView() {
    view.backgroundColor = .systemYellow
    view.addSubview(redView)
    
    NSLayoutConstraint.activate([
      // redView.leading == view.leading + padding
      NSLayoutConstraint(item: redView,
                         attribute: .leading,
                         relatedBy: .equal,
                         toItem: view,
                         attribute: .leading,
                         multiplier: 1.0,
                         constant: padding),
      
      // view.trailing == redView.trailing + padding
      NSLayoutConstraint(item: view!,
                         attribute: .trailing,
                         relatedBy: .equal,
                         toItem: redView,
                         attribute: .trailing,
                         multiplier: 1.0,
                         constant: padding),
      
      // redView.top == view.top + padding
      NSLayoutConstraint(item: redView,
                         attribute: .top,
                         relatedBy: .equal,
                         toItem: view,
                         attribute:
                          .top,
                         multiplier: 1.0,
                         constant: padding),
      
      // view.bottom = redView.bottom + padding
      NSLayoutConstraint(item: view!,
                         attribute: .bottom,
                         relatedBy: .equal,
                         toItem: redView,
                         attribute: .bottom,
                         multiplier: 1.0,
                         constant: padding)
    ])
  }
}

