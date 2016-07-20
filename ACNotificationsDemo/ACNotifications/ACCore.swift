//
//  ACBase.swift
//  ACNotificationsDemo
//
//  Created by Yury on 18/07/16.
//  Copyright © 2016 Avtolic. All rights reserved.
//

import UIKit

// MARK: - ACNotification
protocol ACNotification {
    var notificationView: UIView { get }
}

// MARK: - ACPresenter
protocol ACPresenter: class {
    func addView(view: UIView)
    func removeView(view: UIView)
}

// MARK: - ACAnimation
protocol ACAnimation {
    func animateIn (view view: UIView, completion:() -> Void)
    func animateOut(view view: UIView, completion:() -> Void)
    
    var hasInOutAnimation: Bool { get } // Default is false (see extension below)
    func animateInOut(view view: UIView, previousView: UIView, completion:() -> Void) // Does nothing by default (see extension below)
}

// MARK: extension
extension ACAnimation {
    var hasInOutAnimation: Bool { return false }
    func animateInOut(view view: UIView, previousView: UIView, completion:() -> Void) {
        precondition(hasInOutAnimation, "ACNotifications: This method should never be called if hasInOutAnimation is false.")
    }
}

// MARK: - ACAnimationSimple
protocol ACAnimationSimple: ACAnimation {
    
    var duration: NSTimeInterval { get }
    var hasInOutAnimation: Bool { get }
    func preAnimation(view: UIView) -> Void
    func inAnimation (view: UIView) -> Void
    func outAnimation(view: UIView) -> Void
}

extension ACAnimationSimple {
    
    func animateIn(view view: UIView, completion:() -> Void) {
        
        preAnimation(view)
        UIView.animateWithDuration( duration,
                                    animations: { self.inAnimation(view) },
                                    completion: { _ in completion() })
    }
    
    func animateOut(view view: UIView, completion:() -> Void) {
        
        UIView.animateWithDuration( duration,
                                    animations: { self.outAnimation(view) },
                                    completion: { _ in completion() })
    }
    
    func animateInOut(view view: UIView, previousView: UIView, completion:() -> Void) {
        
        preAnimation(view)
        UIView.animateWithDuration( duration,
                                    animations: {
                                        self.outAnimation(previousView)
                                        self.inAnimation(view) },
                                    completion: { _ in completion() })
    }
}