//
//  AlertViewController.swift
//  SampleAnimationViews
//
//  Created by ADMIN on 12/03/19.
//  Copyright © 2019 ADMIN. All rights reserved.
//

/***********************************************************************************************
    This is Custom AlertViewController. Functions should called by follwing order only.
 
    1. VCColor
    2. AlertIconAct
    3. AlertTitleAct
    4. HorizontalLineAct
    5. AlertMessageAct
    6. HorizontalLineAct2
    7. AcceptAct
    8. DeclineAct
    9. AlertAct             //This should be called finally.
 ***********************************************************************************************/

import UIKit

class RSAlertViewController: UIViewController {
    let MyAlert = UIView()
    let AlertIcon = UIImageView()
    let AlertTitle = UILabel()
    let AlertMessage = UITextView()
    let HorizontalLine = UIView()
    let HorizontalLine2 = UIView()
    let AcceptBtn = UIButton()
    let DeclineBtn = UIButton()
    
    /******************************* This is the AlertView's Constraints ****************************/
    func VCColor(alphaValue: CGFloat) {
        self.view.backgroundColor = UIColor.black.withAlphaComponent(alphaValue)
    }
    
    /******************************* This is the AlertView's Constraints ****************************/
    func AlertAct(corRad: CGFloat, bgColor: UIColor) {
        
        self.view.addSubview(MyAlert)
        
        MyAlert.layer.cornerRadius = corRad
        MyAlert.backgroundColor = bgColor
        MyAlert.translatesAutoresizingMaskIntoConstraints = false
        MyAlert.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        MyAlert.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        MyAlert.widthAnchor.constraint(equalToConstant: AlertSize).isActive = true
        MyAlert.bottomAnchor.constraint(equalTo: AcceptBtn.bottomAnchor, constant: 10).isActive = true
    }
    
    /******************************* This is the AlertView Icon's Constraints ****************************/
    func AlertIconAct(icon: UIImage, bdrWidth: CGFloat, bgColor: UIColor) {
        
        MyAlert.addSubview(AlertIcon)
        
        AlertIcon.clipsToBounds = true
        AlertIcon.image = icon
        AlertIcon.layer.borderColor = UIColor.blue.cgColor
        AlertIcon.layer.borderWidth = bdrWidth
        AlertIcon.layer.cornerRadius = AlertSize/8
        AlertIcon.backgroundColor = bgColor
        AlertIcon.translatesAutoresizingMaskIntoConstraints = false
        AlertIcon.centerXAnchor.constraint(equalTo: MyAlert.centerXAnchor).isActive = true
        AlertIcon.topAnchor.constraint(equalTo: MyAlert.topAnchor, constant: -AlertSize/8).isActive = true
        AlertIcon.widthAnchor.constraint(equalToConstant: AlertSize/4).isActive = true
        AlertIcon.heightAnchor.constraint(equalToConstant: AlertSize/4).isActive = true
    }
    
    /******************************* This is the Alert Title ****************************/
    func AlertTitleAct(title: String, align: NSTextAlignment, txtColor: UIColor) {
        
        MyAlert.addSubview(AlertTitle)
        
        AlertTitle.text = title
        AlertTitle.textAlignment = align
        AlertTitle.textColor = txtColor
        AlertTitle.translatesAutoresizingMaskIntoConstraints = false
        AlertTitle.centerXAnchor.constraint(equalTo: MyAlert.centerXAnchor).isActive = true
        AlertTitle.topAnchor.constraint(equalTo: AlertIcon.bottomAnchor, constant: 10).isActive = true
        AlertTitle.widthAnchor.constraint(equalToConstant: AlertSize - (AlertSize/4) - 30).isActive = true
        AlertTitle.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    /******************************* This is the Horizontal Line ****************************/
    func HorizontalLineAct(lineColor: UIColor) {
        
        //        MARK: Line 1
        MyAlert.addSubview(HorizontalLine)
        
        HorizontalLine.backgroundColor = lineColor
        HorizontalLine.translatesAutoresizingMaskIntoConstraints = false
        HorizontalLine.centerXAnchor.constraint(equalTo: MyAlert.centerXAnchor).isActive = true
        HorizontalLine.topAnchor.constraint(equalTo: AlertTitle.bottomAnchor, constant: 8).isActive = true
        HorizontalLine.widthAnchor.constraint(equalToConstant: AlertSize - (AlertSize/4)).isActive = true
        HorizontalLine.heightAnchor.constraint(equalToConstant: 2).isActive = true
    }
    
    /******************************* This is the Alert Message ****************************/
    func AlertMessageAct(message: String, fontSize: CGFloat, align: NSTextAlignment) {
        MyAlert.addSubview(AlertMessage)
        
        AlertMessage.text = message
        AlertMessage.font = .systemFont(ofSize: fontSize)
        AlertMessage.textAlignment = align
        AlertMessage.isEditable = false
        AlertMessage.translatesAutoresizingMaskIntoConstraints = true
        AlertMessage.isScrollEnabled = false
        AlertMessage.translatesAutoresizingMaskIntoConstraints = false
        AlertMessage.centerXAnchor.constraint(equalTo: MyAlert.centerXAnchor).isActive = true
        AlertMessage.topAnchor.constraint(equalTo: HorizontalLine.bottomAnchor, constant: 10).isActive = true
        AlertMessage.widthAnchor.constraint(equalToConstant: AlertSize - (AlertSize/4) - 30).isActive = true
    }
    
    func HorizontalLineAct2(lineColor: UIColor) {
        //        MARK: Line 2
        MyAlert.addSubview(HorizontalLine2)
        
        HorizontalLine2.backgroundColor = lineColor
        HorizontalLine2.translatesAutoresizingMaskIntoConstraints = false
        HorizontalLine2.centerXAnchor.constraint(equalTo: MyAlert.centerXAnchor).isActive = true
        HorizontalLine2.topAnchor.constraint(equalTo: AlertMessage.bottomAnchor, constant: 8).isActive = true
        HorizontalLine2.widthAnchor.constraint(equalToConstant: AlertSize - (AlertSize/4)).isActive = true
        HorizontalLine2.heightAnchor.constraint(equalToConstant: 2).isActive = true
    }
    
    /******************************* This is the Response Button (Accept) ****************************/
    func AcceptAct(btnName: String, btnColor: UIColor, cornerRadius: CGFloat) {
        
        MyAlert.addSubview(AcceptBtn)
        
        AcceptBtn.setTitle(btnName, for: .normal)
        AcceptBtn.backgroundColor = btnColor
        AcceptBtn.layer.cornerRadius = cornerRadius
        AcceptBtn.addTarget(self, action: #selector(AcceptBtnPressed), for: .touchUpInside)
        AcceptBtn.translatesAutoresizingMaskIntoConstraints = false
        AcceptBtn.topAnchor.constraint(equalTo: HorizontalLine2.bottomAnchor, constant: 8).isActive = true
        AcceptBtn.leftAnchor.constraint(equalTo: MyAlert.leftAnchor, constant: 15).isActive = true
        AcceptBtn.widthAnchor.constraint(equalToConstant: (AlertSize/2)-30).isActive = true
        AcceptBtn.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
    }
    
    /******************************* This is the Response Button (Decline) ****************************/
    func DeclineAct(btnName: String, btnColor: UIColor, cornerRadius: CGFloat) {
        
        MyAlert.addSubview(DeclineBtn)
        
        DeclineBtn.setTitle(btnName, for: .normal)
        DeclineBtn.backgroundColor = btnColor
        DeclineBtn.layer.cornerRadius = cornerRadius
        DeclineBtn.addTarget(self, action: #selector(DeclineBtnPressed), for: .touchUpInside)
        DeclineBtn.translatesAutoresizingMaskIntoConstraints = false
        DeclineBtn.topAnchor.constraint(equalTo: HorizontalLine2.bottomAnchor, constant: 8).isActive = true
        DeclineBtn.rightAnchor.constraint(equalTo: MyAlert.rightAnchor, constant: -15).isActive = true
        DeclineBtn.widthAnchor.constraint(equalToConstant: (AlertSize/2)-30).isActive = true
        DeclineBtn.heightAnchor.constraint(equalToConstant: 35).isActive = true
    }
    
    @objc func AcceptBtnPressed(){
        print("Accept Button!")
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func DeclineBtnPressed(){
        print("Decline Button!")
        self.dismiss(animated: true, completion: nil)
    }
    
    public var AlertSize: CGFloat {
        return UIScreen.main.bounds.width - 150
    }
}
