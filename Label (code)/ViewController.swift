//
//  ViewController.swift
//  Label (code)
//
//  Created by iMaxiOS on 3/30/18.
//  Copyright © 2018 iMaxiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //setup UI
    let titleLabel = UILabel()
    let bodyLabel = UILabel()

    fileprivate func setupLabels() {
        titleLabel.font = UIFont(name: "Futura", size: 33)
        titleLabel.numberOfLines = 0
        titleLabel.text = "Welcome to the Compony iMakca"
        bodyLabel.numberOfLines = 0
        bodyLabel.text = "Let's learn how to chain animations together in today's lesson to achieve some stunning visual effects.  Nothing too hard, but you need to make sure you don't overdo it with animations.  Have fun."
    }
    
    fileprivate func setupStackView() {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, bodyLabel])
        
        stackView.axis = .vertical
        stackView.spacing = 8
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -100).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLabels()
        setupStackView()
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handlTapAnimation)))
        
    }
    
    //animation View
    @objc fileprivate func handlTapAnimation() {
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            
            
            self.titleLabel.transform = CGAffineTransform(translationX: -30, y: 0)
            
        }) { (_) in
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                self.titleLabel.alpha = 0
                self.titleLabel.transform = self.titleLabel.transform.translatedBy(x: 0, y: -200)
                
            })
            
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            
            
            self.bodyLabel.transform = CGAffineTransform(translationX: -30, y: 0)
            
        }) { (_) in
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                self.bodyLabel.alpha = 0
                self.bodyLabel.transform = self.bodyLabel.transform.translatedBy(x: 0, y: -200)
                
            })
            
        }
    }
}












