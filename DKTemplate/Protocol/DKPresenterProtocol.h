//
//  DKPresenterProtocol.h
//  DKTemplate
//
//  Created by bill on 2017/11/29.
//  Copyright © 2017年 bill. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol DKViewProtocol;
@protocol DKViewModelProtocol;



@protocol DKPresenterProtocol <NSObject>
- (void)adapterWithView:(id<DKViewProtocol>)view viewModel:(id<DKViewModelProtocol>)viewModel;

@optional
-(void)push:(id)userInfo;
-(void)pop;


@end
