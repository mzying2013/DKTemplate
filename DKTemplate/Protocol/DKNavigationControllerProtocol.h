//
//  DKNavigationControllerProtocol.h
//  DKTemplate
//
//  Created by bill on 2017/12/7.
//  Copyright © 2017年 bill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DKNavigationControllerProtocol <NSObject>
@optional
/**
 是否隐藏导航栏

 @return 是否隐藏
 */
-(BOOL)dk_isHiddenNavigationBar;

/**
 是否禁用手势返回

 @return 是否禁用
 */
-(BOOL)dk_disableInteractivePop;




@end
