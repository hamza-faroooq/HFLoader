//
//  HFLoader.swift
//  loaderUsingAnimations
//
//  Created by Hamza Farooq on 05/04/2019.
//  Copyright © 2019 Hamza Farooq. All rights reserved.
//

import UIKit

class HFLoader: UIView {
    
    private var isStopAnimation: Bool = false
    private var isAlreadyStarted: Bool = false
    
    init(frame: CGRect, viewBGColor: UIColor, viewBorderWidth: CGFloat, viewBorderColor: UIColor, viewCornerRadius: CGFloat, viewImage: UIImage) {
        super.init(frame: frame)
        
        self.backgroundColor = viewBGColor
        self.layer.borderColor = viewBorderColor.cgColor
        self.layer.borderWidth = viewBorderWidth
        self.layer.cornerRadius = viewCornerRadius
        
        let imageView = UIImageView(image: viewImage)
        imageView.frame = self.frame
        self.addSubview(imageView)
        
        self.isHidden = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    func startAnimation() {
        
        if !isAlreadyStarted {

            self.frame.origin.y = (UIScreen.main.bounds.height / 2) - self.frame.size.height / 2
            self.frame.origin.x = (UIScreen.main.bounds.width / 2) - self.frame.size.width / 2

            self.isHidden = false
            
            self.isAlreadyStarted = true
            self.isStopAnimation = false
            
            self.animateFromCenterToRight()

        }
        
    }
    
    func stopAnimation() {
        
        self.isHidden = true
        
        self.isAlreadyStarted = false
        self.isStopAnimation = true
        
    }
    
    private func animateFromCenterToRight() {
        
        UIView.animate(withDuration: 0.25, animations: {
            //1.Expand
            self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }) { (completed) in
            UIView.animate(withDuration: 0.25, animations: {
                //2.Shrink
                self.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
            }) { (completed) in
                UIView.animate(withDuration: 0.25, animations: {
                    //3.Grant momentum
                    self.frame.origin.x -= 16
                }) { (completed) in
                    UIView.animate(withDuration: 0.25, animations: {
                        //4.Move out of screen and reduce alpha to 0
                        self.frame.origin.x = UIScreen.main.bounds.width
                        self.alpha = 0.0
                    }) { (completed) in
                        
                        if self.isStopAnimation {
                            self.frame.origin.x = (UIScreen.main.bounds.width / 2)
                            self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                            self.alpha = 1.0
                        } else {
                            self.frame.origin.x = 0
                            self.animateFromLeftToCenter()
                        }
                        
                    }
                }
            }
        }
        
    }
    
    private func animateFromLeftToCenter() {
        
        UIView.animate(withDuration: 0.25, animations: {
            
            self.frame.origin.x = (UIScreen.main.bounds.width / 2) + 16
            self.alpha = 1.0
        }) { (completed) in
            UIView.animate(withDuration: 0.25, animations: {
                
                self.frame.origin.x -= 16
            }, completion: { (completed) in
                UIView.animate(withDuration: 0.25, animations: {
                    
                    self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
                }, completion: { (completed) in
                    UIView.animate(withDuration: 0.25, animations: {
                        
                        self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    }, completion: { (completed) in
                        
                        if self.isStopAnimation {
                            print("Animation Stopped")
                        } else {
                            self.animateFromCenterToRight()
                        }
                        
                    })
                })
            })
        }
        
    }
    
}
