//
//  FollowVC.swift
//  myBook
//
//  Created by Andy Chen on 7/28/24.
//

import UIKit
import XLPagerTabStrip
class FollowVC: UIViewController, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func indicatorInfo(for pagerTabStripController: XLPagerTabStrip.PagerTabStripViewController) -> XLPagerTabStrip.IndicatorInfo {
        IndicatorInfo(title:"Following")
    }

}
