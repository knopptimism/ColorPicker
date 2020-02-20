//
//  ColorPicker.swift
//  ColorPicker
//
//  Created by Joben Gohlke on 2/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

@IBDesignable
class ColorPicker: UIControl {

  // This is the color chosen by the user
  var color: UIColor = .white
  
  // These are the subviews of this control
  var colorWheel = ColorWheel()
  var brightnessSlider = UISlider()
  
  // MARK: - Initializers
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setUpSubviews()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    setUpSubviews()
  }
  
  // MARK: - View Lifecycle
  
  func setUpSubviews() {
    backgroundColor = .clear
    
    // Color wheel
    colorWheel.translatesAutoresizingMaskIntoConstraints = false
    addSubview(colorWheel)
    
    NSLayoutConstraint.activate([
      colorWheel.topAnchor.constraint(equalTo: topAnchor),
      colorWheel.leadingAnchor.constraint(equalTo: leadingAnchor),
      colorWheel.trailingAnchor.constraint(equalTo: trailingAnchor),
      colorWheel.heightAnchor.constraint(equalTo: colorWheel.widthAnchor)
    ])
    
    // Brightness slider
    brightnessSlider.minimumValue = 0
    brightnessSlider.maximumValue = 1
    brightnessSlider.value = 0.8
    brightnessSlider.translatesAutoresizingMaskIntoConstraints = false
    brightnessSlider.addTarget(self, action: #selector(changeBrightness), for: .valueChanged)
    addSubview(brightnessSlider)
    
    NSLayoutConstraint.activate([
      brightnessSlider.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
      brightnessSlider.leadingAnchor.constraint(equalTo: leadingAnchor),
      brightnessSlider.trailingAnchor.constraint(equalTo: trailingAnchor)
    ])
  }
  
  // MARK: - Actions
  
  @objc func changeBrightness() {
    
  }

}
