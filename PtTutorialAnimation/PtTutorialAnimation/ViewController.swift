//
//  ViewController.swift
//  PtTutorialAnimation
//
//  Created by BJIT on 24/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yAxisWithMessage: NSLayoutConstraint!
    @IBOutlet weak var xAxisWithMessage: NSLayoutConstraint!
    @IBOutlet weak var handImageView: UIImageView!
    @IBOutlet weak var topContrainMessage: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        animateHand()
        animateMesssage()
        
    }


    private func startPointHand(){
        xAxisWithMessage.constant = 20
        yAxisWithMessage.constant = 300
        handImageView.alpha = 0.0
    }

    private func endPointHand(){
        xAxisWithMessage.constant = 80
        yAxisWithMessage.constant = 235
        handImageView.alpha = 1.0

    }

    private func startPointMessage(){
        topContrainMessage.constant = 115

    }

    private func bottomPointMessage(){
        topContrainMessage.constant = 125
    }

    private func endPointMessage(){
        topContrainMessage.constant = 120
    }

    private func animateHand(){
        UIView.animate(withDuration: 1.0, delay: 0) { [weak self] in
            self?.startPointHand()
            self?.endPointHand()
            self?.view.layoutIfNeeded()

        }
    }

    private func animateMesssage(){
        UIView.animate(withDuration: 0.25, delay: 0.0) { [weak self] in
            self?.startPointMessage()
            self?.view.layoutIfNeeded()
            self?.bottomPointMessage()
            self?.view.layoutIfNeeded()
        }

        UIView.animate(withDuration: 0.25, delay: 0.25) { [weak self] in
            self?.bottomPointMessage()
            self?.view.layoutIfNeeded()
            self?.endPointMessage()
            self?.view.layoutIfNeeded()
        }

        UIView.animate(withDuration: 0.25, delay: 0.5) { [weak self] in
            self?.bottomPointMessage()
            self?.view.layoutIfNeeded()
            self?.startPointMessage()
            self?.view.layoutIfNeeded()
        }

        UIView.animate(withDuration: 0.25, delay: 0.75) { [weak self] in
            self?.bottomPointMessage()
            self?.view.layoutIfNeeded()
            self?.endPointMessage()
            self?.view.layoutIfNeeded()
        }

    }

    @IBAction func resetButtonTapped(_ sender: Any) {
        self.startPointHand()
        view.layer.layoutIfNeeded()
        animateHand()
        self.startPointMessage()
        view.layer.layoutIfNeeded()
        animateMesssage()

        self.startPointMessage()
        view.layer.layoutIfNeeded()
        animateMesssage()
    }

}

