/**
 * FILE:
 * Anchors-v3/Anchors-v3/ViewController.swift */

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

//  Modified by Ignasi Perez on 25/05/2021.

import UIKit


final class ViewController: UIViewController {
  
  private let padding: CGFloat = 50.0
  private let spacing: CGFloat = 25.0
  
  private let redView = UIView.makeView(color: .systemPink)
  private let greenView = UIView.makeView(color: .systemGreen)
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
  }
  
  
  private func setupView() {
    view.backgroundColor = .systemYellow
    view.addSubview(redView)
    view.addSubview(greenView)
    
    // Add constraints here
    let guide = view.safeAreaLayoutGuide
    NSLayoutConstraint.activate([
      redView
        .leadingAnchor
        .constraint(equalTo: guide.leadingAnchor,
                    constant: padding),
      greenView
        .leadingAnchor
        .constraint(equalTo: guide.leadingAnchor,
                    constant: padding),
      
      guide
        .trailingAnchor
        .constraint(equalTo: redView.trailingAnchor,
                    constant: padding),
      guide
        .trailingAnchor
        .constraint(equalTo: greenView.trailingAnchor,
                    constant: padding),
      
      redView
        .topAnchor
        .constraint(equalTo: guide.topAnchor,
                    constant: padding),
      greenView
        .topAnchor
        .constraint(equalTo: redView.bottomAnchor,
                    constant: spacing),
      guide
        .bottomAnchor
        .constraint(equalTo: greenView.bottomAnchor,
                    constant: padding),
      
      redView
        .heightAnchor
        .constraint(equalTo: greenView.heightAnchor)
    ])
    

  }
  
}


private extension UIView {
  static func makeView(color: UIColor) -> UIView {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = color
    return view
  }
}

