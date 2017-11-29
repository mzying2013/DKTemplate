//
//  DKView.m
//  DKTemplate
//
//  Created by bill on 2017/11/29.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "DKView.h"

static NSString * const kCellID = @"kCellID";

@interface DKView()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView * dkTableView;

@end




@implementation DKView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

#pragma mark - Life Cycle
-(instancetype)init{
    self = [super init];
    
    if(self){
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.dkTableView];
    }
    
    return self;
}


#pragma mark - Override Method
-(void)layoutSubviews{
    [super layoutSubviews];
    self.dkTableView.frame = self.bounds;
}



#pragma mark - Property Method
-(UITableView *)dkTableView{
    if (!_dkTableView) {
        _dkTableView = [[UITableView alloc] init];
        _dkTableView.delegate = self;
        _dkTableView.dataSource = self;
        [_dkTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCellID];
    }
    return _dkTableView;
}


#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:kCellID];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row+1];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}




@end
