//
//  DKDetailView.m
//  DKTemplate
//
//  Created by bill on 2017/11/30.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "DKDetailView.h"
#import "DKDetailViewModel.h"
#import "DKDetailModel.h"

static NSString * const kCellID = @"kCellID";

@interface DKDetailView()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView * detailTableView;

@end


@implementation DKDetailView

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
    
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.detailTableView];
    }
    return self;
}


#pragma mark - Override Method
-(void)layoutSubviews{
    [super layoutSubviews];
    self.detailTableView.frame = self.bounds;
}



#pragma mark - Property Method
-(UITableView *)detailTableView{
    if (!_detailTableView) {
        _detailTableView = [[UITableView alloc] init];
        _detailTableView.delegate = self;
        _detailTableView.dataSource = self;
//        [_detailTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCellID];
    }
    return _detailTableView;
}


-(void)setViewModel:(id<DKViewModelProtocol>)viewModel{
    _viewModel = viewModel;
    [self.detailTableView reloadData];
}



#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.viewModel.model.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:kCellID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:kCellID];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    NSString * title = self.viewModel.model.datas[indexPath.row][@"title"];
    NSString * value = self.viewModel.model.datas[indexPath.row][@"value"];
    cell.textLabel.text = title;
    cell.detailTextLabel.text = value;
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}









@end
