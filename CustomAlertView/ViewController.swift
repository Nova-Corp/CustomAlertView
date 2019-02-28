//
//  ViewController.swift
//  CustomAlertView
//
//  Created by ADMIN on 27/02/19.
//  Copyright © 2019 ADMIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        self.view.backgroundColor?.withAlphaComponent(0.6)

        AlertAct()
        AlertIconAct()
        AlertTitleAct()
        HorizontalLineAct()
        AlertMessageAct()
        HorizontalLineAct2()
        AcceptAct()
        DeclineAct()
    }

    let MyAlert = UIView()
    let AlertIcon = UIImageView()
    let AlertTitle = UILabel()
    let AlertMessage = UITextView()
    let HorizontalLine = UIView()
    let HorizontalLine2 = UIView()
    let AcceptBtn = UIButton()
    let DeclineBtn = UIButton()
    let myIcon = #imageLiteral(resourceName: "sample1_l")
    
/******************************* This is the AlertView's Constraints ****************************/
    
    func AlertAct() {
        
        self.view.addSubview(MyAlert)
        
        MyAlert.layer.cornerRadius = 8
        MyAlert.backgroundColor = .white
        MyAlert.translatesAutoresizingMaskIntoConstraints = false
        MyAlert.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        MyAlert.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        MyAlert.widthAnchor.constraint(equalToConstant: AlertSize).isActive = true
        MyAlert.heightAnchor.constraint(equalToConstant: AlertSize + AlertMessage.frame.height + 15).isActive = true
    }
    
/******************************* This is the AlertView Icon's Constraints ****************************/
    func AlertIconAct() {

        MyAlert.addSubview(AlertIcon)
        
        AlertIcon.clipsToBounds = true
        AlertIcon.image = myIcon
        AlertIcon.layer.borderColor = UIColor.blue.cgColor
        AlertIcon.layer.borderWidth = 2
        AlertIcon.layer.cornerRadius = AlertSize/8
        AlertIcon.backgroundColor = .yellow
        AlertIcon.translatesAutoresizingMaskIntoConstraints = false
        AlertIcon.centerXAnchor.constraint(equalTo: MyAlert.centerXAnchor).isActive = true
        AlertIcon.topAnchor.constraint(equalTo: MyAlert.topAnchor, constant: -AlertSize/8).isActive = true
        AlertIcon.widthAnchor.constraint(equalToConstant: AlertSize/4).isActive = true
        AlertIcon.heightAnchor.constraint(equalToConstant: AlertSize/4).isActive = true
    }
    
/******************************* This is the Alert Title ****************************/
    func AlertTitleAct() {
        
        MyAlert.addSubview(AlertTitle)
        
        AlertTitle.text = "Alert View!"
        AlertTitle.textAlignment = .center
        AlertTitle.textColor = .red
        AlertTitle.translatesAutoresizingMaskIntoConstraints = false
        AlertTitle.centerXAnchor.constraint(equalTo: MyAlert.centerXAnchor).isActive = true
        AlertTitle.topAnchor.constraint(equalTo: AlertIcon.bottomAnchor, constant: 10).isActive = true
        AlertTitle.widthAnchor.constraint(equalToConstant: AlertSize - (AlertSize/4) - 30).isActive = true
        AlertTitle.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }

/******************************* This is the Horizontal Line ****************************/
    func HorizontalLineAct() {
        
//        MARK: Line 1
        MyAlert.addSubview(HorizontalLine)
        
        HorizontalLine.backgroundColor = .gray
        HorizontalLine.translatesAutoresizingMaskIntoConstraints = false
        HorizontalLine.centerXAnchor.constraint(equalTo: MyAlert.centerXAnchor).isActive = true
        HorizontalLine.topAnchor.constraint(equalTo: AlertTitle.bottomAnchor, constant: 8).isActive = true
        HorizontalLine.widthAnchor.constraint(equalToConstant: AlertSize - (AlertSize/4)).isActive = true
        HorizontalLine.heightAnchor.constraint(equalToConstant: 2).isActive = true
    }

/******************************* This is the Alert Title ****************************/
    func AlertMessageAct() {
        MyAlert.addSubview(AlertMessage)
        
        AlertMessage.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        AlertMessage.textAlignment = .center
        AlertMessage.isEditable = false
        AlertMessage.translatesAutoresizingMaskIntoConstraints = true
        AlertMessage.isScrollEnabled = false
        AlertMessage.translatesAutoresizingMaskIntoConstraints = false
        AlertMessage.centerXAnchor.constraint(equalTo: MyAlert.centerXAnchor).isActive = true
        AlertMessage.topAnchor.constraint(equalTo: HorizontalLine.bottomAnchor, constant: 10).isActive = true
        AlertMessage.widthAnchor.constraint(equalToConstant: AlertSize - (AlertSize/4) - 30).isActive = true
    }
    
    func HorizontalLineAct2() {
        //        MARK: Line 2
        MyAlert.addSubview(HorizontalLine2)
        
        HorizontalLine2.backgroundColor = .gray
        HorizontalLine2.translatesAutoresizingMaskIntoConstraints = false
        HorizontalLine2.centerXAnchor.constraint(equalTo: MyAlert.centerXAnchor).isActive = true
        HorizontalLine2.topAnchor.constraint(equalTo: AlertMessage.bottomAnchor, constant: 8).isActive = true
        HorizontalLine2.widthAnchor.constraint(equalToConstant: AlertSize - (AlertSize/4)).isActive = true
        HorizontalLine2.heightAnchor.constraint(equalToConstant: 2).isActive = true
    }
    
/******************************* This is the Response Button (Accept) ****************************/
    func AcceptAct() {

        MyAlert.addSubview(AcceptBtn)
        
        AcceptBtn.setTitle("Accept", for: .normal)
        AcceptBtn.backgroundColor = .green
        AcceptBtn.layer.cornerRadius = 8
        AcceptBtn.addTarget(self, action: #selector(AcceptBtnPressed), for: .touchUpInside)
        AcceptBtn.translatesAutoresizingMaskIntoConstraints = false
        AcceptBtn.topAnchor.constraint(equalTo: HorizontalLine2.bottomAnchor, constant: 8).isActive = true
        AcceptBtn.leftAnchor.constraint(equalTo: MyAlert.leftAnchor, constant: 15).isActive = true
        AcceptBtn.widthAnchor.constraint(equalToConstant: (AlertSize/2)-30).isActive = true
        AcceptBtn.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
    }
    
/******************************* This is the Response Button (Decline) ****************************/
    func DeclineAct() {

        MyAlert.addSubview(DeclineBtn)
        
        DeclineBtn.setTitle("Accept", for: .normal)
        DeclineBtn.backgroundColor = .red
        DeclineBtn.layer.cornerRadius = 8
        DeclineBtn.addTarget(self, action: #selector(DeclineBtnPressed), for: .touchUpInside)
        DeclineBtn.translatesAutoresizingMaskIntoConstraints = false
        DeclineBtn.topAnchor.constraint(equalTo: HorizontalLine2.bottomAnchor, constant: 8).isActive = true
        DeclineBtn.rightAnchor.constraint(equalTo: MyAlert.rightAnchor, constant: -15).isActive = true
        DeclineBtn.widthAnchor.constraint(equalToConstant: (AlertSize/2)-30).isActive = true
        DeclineBtn.heightAnchor.constraint(equalToConstant: 35).isActive = true
    }
    
    @objc func AcceptBtnPressed(){
        print("Accept Button!")
    }
    
    @objc func DeclineBtnPressed(){
        print("Decline Button!")
    }
    
    public var AlertSize: CGFloat {
        return UIScreen.main.bounds.width - 150
    }
}

