//
//  Font+.swift
//  SOPT_36_practice
//
//  Created by 쏘 on 4/11/25.
//

import UIKit

extension UIFont {
    
    enum pretendardFontName: String {
        case medium     = "Pretendard-Medium"
        case regular    = "Pretendard-Regular"
        case bold       = "Pretendard-Bold"
        case light      = "Pretendard-Light"
        case extraBold  = "Pretendard-ExtraBold"
    }
    
    class func preMedium(size: CGFloat) -> UIFont {
        return UIFont(name:pretendardFontName.medium.rawValue, size: size)!
    }
    
    class func preBold(size: CGFloat) -> UIFont {
        return UIFont(name:pretendardFontName.bold.rawValue, size: size)!
    }
    
    class func preRegular(size: CGFloat) -> UIFont {
        return UIFont(name:pretendardFontName.regular.rawValue, size: size)!
    }
    
    class func preLight(size: CGFloat) -> UIFont {
        return UIFont(name:pretendardFontName.light.rawValue, size: size)!
    }
    
    class func preExtraBold(size: CGFloat) -> UIFont {
        return UIFont(name:pretendardFontName.extraBold.rawValue, size: size)!
    }
}
