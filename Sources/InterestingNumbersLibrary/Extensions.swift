
import Foundation
import UIKit


public extension UIColor {
    static let specialBackground = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    static let specialMagnolia = #colorLiteral(red: 0.9803921569, green: 0.968627451, blue: 0.9921568627, alpha: 1)
    static let specialNightRider = #colorLiteral(red: 0.1764705882, green: 0.1764705882, blue: 0.1764705882, alpha: 1)
    static let specialPurple = #colorLiteral(red: 0.5019607843, green: 0.2, blue: 0.8, alpha: 1)
    static let specialBoarderColor = UIColor(red: 0.96, green: 0.936, blue: 0.984, alpha: 1)
}

public extension UIFont {
    
    //    Bold
    static func openSansBold28() -> UIFont? {
        return UIFont.init(name: "OpenSans-Bold", size: 28)
    }
    
    //    Light
    static func openSansLight16() -> UIFont? {
        return UIFont.init(name: "OpenSans-Light", size: 16)
    }
    
    //    SemiBold
    static func openSansSemiBold13() -> UIFont? {
        return UIFont.init(name: "OpenSans-SemiBold", size: 13)
    }
    
    static func openSansSemiBold18() -> UIFont? {
        return UIFont.init(name: "OpenSans-SemiBold", size: 18)
    }
    
    static func openSansSemiBold16() -> UIFont? {
        return UIFont.init(name: "OpenSans-SemiBold", size: 16)
    }
}

public extension UIView {
    func addShadowOnView() {
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.15).cgColor
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 4
    }
}

public extension UIButton {
    func setUpCustomButton() {
        titleLabel?.font = .openSansSemiBold13()
        setTitleColor(.black, for: .normal)
        titleLabel?.textAlignment = .center
        backgroundColor = .specialBackground
        titleLabel?.numberOfLines = 2
        layer.cornerRadius = 6
        layer.borderWidth = 1
        layer.borderColor = UIColor.specialBoarderColor.cgColor
        translatesAutoresizingMaskIntoConstraints = false
    }
}
