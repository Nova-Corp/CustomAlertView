# CustomAlertView
This is Customised Alert View For Ios Swift Library.

Add UIView to The Storyboard and set the RSAlertViewController.swift to the UIView.
In Main Program call the follwing necessory functions with respective parameters.
Add the action for Accept and Decline Button inside the objective c function of RSAlertViewController.swift file.

    1. VCColor
    2. AlertIconAct
    3. AlertTitleAct
    4. HorizontalLineAct
    5. AlertMessageAct
    6. HorizontalLineAct2
    7. AcceptAct
    8. DeclineAct
    9. AlertAct             
    
#    NOTE:-
      Please call the functions in above order itself.
      AlertAct function should be called finally.
      
#    Example:-
    
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let myAlert = storyboard.instantiateViewController(withIdentifier: "RSAlertViewController") as! RSAlertViewController
        
        myAlert.VCColor(alphaValue: 0.5)
        myAlert.AlertIconAct(icon: #imageLiteral(resourceName: "sample1_l"), bdrWidth: 4, bgColor: .green)
        myAlert.AlertTitleAct(title: "Message!", align: .center, txtColor: .red)
        myAlert.HorizontalLineAct(lineColor: .gray)
        myAlert.AlertMessageAct(message: "Your Message is Received.Your Message is Received.Your Message is Received.Your Message is Received.Your Message is Received.", fontSize: 16, align: .center)
        myAlert.HorizontalLineAct2(lineColor: .gray)
        myAlert.AcceptAct(btnName: "Accept", btnColor: .green, cornerRadius: 5)
        myAlert.DeclineAct(btnName: "Decline", btnColor: .red, cornerRadius: 5)
        myAlert.AlertAct(corRad: 8, bgColor: .white)
        
        myAlert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        myAlert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
