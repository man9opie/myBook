//
//  HomeVC.swift
//  myBook
//
//  Created by Andy Chen on 7/27/24.
//

import UIKit
import XLPagerTabStrip

class HomeVC: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        // MARK: Set up bar, button and slide UI.
        settings.style.selectedBarBackgroundColor = UIColor(named: "Main")!
        settings.style.selectedBarHeight = 5
        
        settings.style.buttonBarItemBackgroundColor = .clear
        settings.style.buttonBarItemTitleColor = .label
        settings.style.buttonBarItemFont = .systemFont(ofSize:15)
        settings.style.buttonBarItemLeftRightMargin = 0
        
        super.viewDidLoad()
        
        containerView.bounces = false
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animeted: Bool) -> Void in
            guard changeCurrentIndex == true else {return}
            oldCell?.label.textColor = .secondaryLabel
            newCell?.label.textColor = .label
        }
        
    }
    

    override public func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let followVC = storyboard!.instantiateViewController(identifier:  kFollowVCID)
        let nearbyVC =  storyboard!.instantiateViewController(identifier: kNearbyVCID)
        let discoveryVC = storyboard!.instantiateViewController(identifier: kDiscoveryVCID)
        return [discoveryVC, followVC, nearbyVC]
    }

}
