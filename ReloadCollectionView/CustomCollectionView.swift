//
//  CustomCollectionView
//  CustomCollectionView
//
//  Created by shaofeng on 2017/4/14.
//  Copyright © 2017年 shaofeng. All rights reserved.
//

import UIKit

public typealias CollectionViewReloadDataWithCompletion = () -> Swift.Void

class CustomCollectionView: UICollectionView {

    var reloadDataCompletion: CollectionViewReloadDataWithCompletion?;
    
    func reloadData(completion: @escaping CollectionViewReloadDataWithCompletion) {
        reloadDataCompletion = completion;
        super.reloadData();
    }
    
    override func layoutSubviews() {
        super.layoutSubviews();
        if let completion = self.reloadDataCompletion {
            completion();
        }
    }
    
}
