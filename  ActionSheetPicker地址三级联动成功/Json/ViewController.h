//
//  ViewController.h
//  Json
//
//  Created by 宓珂璟 on 16/5/7.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void(^MyBlock)(NSString *address,NSArray *selections);
@interface ViewController : UIViewController

@property (nonatomic,strong) NSArray *selections; //!< 选择的三个下标
@property (nonatomic,copy) NSString *pushAddress; //!< 展示的地址

@property (nonatomic,copy) MyBlock myBlock; //!< 回调地址的block
@end

