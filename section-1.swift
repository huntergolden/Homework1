import UIKIT

let viewRect = CGRect(x:0.0, y:0.0, width: 420.0, height: 420.0)
let view = UIView(frame: viewRect)
view.backgroundColor = UIColor(red: 244/255, green: 230/255, blue: 242/255, alpha: 1.0)

let greenView = UIView(frame: CGRectZero)
greenView.setTranslatesAutoresizingMaskIntoConstraints(false)
greenView.backgroundColor = UIColor.greenColor()

let orangeView = UIView(frame: CGRectZero)
orangeView.setTranslatesAutoresizingMaskIntoConstraints(false)
orangeView.backgroundColor = UIColor.orangeColor()

let blueView = UIView(frame: CGRectZero)
blueView.setTranslatesAutoresizingMaskIntoConstraints(false)
blueView.backgroundColor = UIColor.blueColor()

let yellowView = UIView(frame: CGRectZero)
yellowView.setTranslatesAutoresizingMaskIntoConstraints(false)
yellowView.backgroundColor = UIColor.yellowColor()

view.addSubview(greenView)
view.addSubview(orangeView)
view.addSubview(blueView)
view.addSubview(yellowView)

let greenViewTopConstraint = NSLayoutConstraint(item: greenView, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 20.0)

let greenViewLeftConstraint = NSLayoutConstraint(item: greenView, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 16.0)

let greenViewRightConstraint = NSLayoutConstraint(item: greenView, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: -16.0)

let greenViewBottomConstraint = NSLayoutConstraint(item: greenView, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: -10.0)

let orangeViewTopConstraint = NSLayoutConstraint(item: orangeView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: .Top, multiplier: 1.0, constant: 10.0)

let orangeViewRightConstraint = NSLayoutConstraint(item: orangeView, attribute: .Right, relatedBy: .Equal, toItem: greenView, attribute: .Right, multiplier: 1.0, constant: -10.0)

let orangeViewBottomConstraint = NSLayoutConstraint(item: orangeView, attribute: .Bottom, relatedBy: .Equal, toItem: greenView, attribute: .CenterY, multiplier: 1.0, constant: -3.0)

let orangeViewLeftConstraint = NSLayoutConstraint(item: orangeView, attribute: .Left, relatedBy: .Equal, toItem: greenView, attribute: .CenterX, multiplier: 1.0, constant: 3.0)

let blueViewBottomConstraint = NSLayoutConstraint(item: blueView, attribute: .Bottom, relatedBy: .Equal, toItem: greenView, attribute: .CenterY, multiplier: 1.0, constant: -3.0)

let blueViewRightConstraint = NSLayoutConstraint(item: blueView, attribute: .Right, relatedBy: .Equal, toItem: orangeView, attribute: .Left, multiplier: 1.0, constant: -6.0)

let blueViewLeftConstraint = NSLayoutConstraint(item: blueView, attribute: .Left, relatedBy: .Equal, toItem: greenView, attribute: .Left, multiplier: 1.0, constant: 10.0)

let blueViewTopConstraint = NSLayoutConstraint(item: blueView, attribute: .Top, relatedBy: .Equal, toItem: greenView, attribute: .Top, multiplier: 1.0, constant: 10.0)

let yellowViewTopConstraint = NSLayoutConstraint(item: yellowView, attribute: .Top, relatedBy: .Equal, toItem: greenView, attribute: .CenterY, multiplier: 1.0, constant: 3.0)

let yellowViewRightConstraint = NSLayoutConstraint(item: yellowView, attribute: .Right, relatedBy: .Equal, toItem: greenView, attribute: .Right, multiplier: 1.0, constant: -10.0)

let yellowViewBottomConstraint = NSLayoutConstraint(item: yellowView, attribute: .Bottom, relatedBy: .Equal, toItem: greenView, attribute: .Bottom, multiplier: 1.0, constant: -10.0)

let yellowViewLeftConstraint = NSLayoutConstraint(item: yellowView, attribute: .Left, relatedBy: .Equal, toItem: greenView, attribute: .Left, multiplier: 1.0, constant: 10.0)


var constraints = [orangeViewLeftConstraint, orangeViewRightConstraint, orangeViewTopConstraint, blueViewBottomConstraint, blueViewLeftConstraint, blueViewRightConstraint, blueViewTopConstraint, orangeViewBottomConstraint, greenViewTopConstraint, greenViewRightConstraint, greenViewLeftConstraint, greenViewBottomConstraint, yellowViewTopConstraint, yellowViewRightConstraint, yellowViewLeftConstraint, yellowViewBottomConstraint]

view.addConstraints(constraints)
view.layoutIfNeeded()
