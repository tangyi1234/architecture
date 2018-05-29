//
//  TYViewController.m
//  InheritanceHierarchy
//
//  Created by 汤义 on 2018/5/17.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYViewController.h"
#import "TYTableViewCell.h"
#import "SKFFPSLabel.h"

#define W [UIScreen mainScreen].bounds.size.width
#define H [UIScreen mainScreen].bounds.size.height
@interface TYViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tabelView;
@property (nonatomic, strong) SKFFPSLabel *SkfFPSLabel;
@end

@implementation TYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initTabelView];
    [self startTheFPSLabel];
}

- (void)initTabelView {
    _tabelView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, W, H) style:UITableViewStylePlain];
    _tabelView.delegate = self;
    _tabelView.dataSource = self;
    [self.view addSubview:_tabelView];
}

- (NSUInteger)numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    static NSString *ID = @"cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
//    }
//    NSUInteger i = [indexPath row];
//    cell.textLabel.text = [NSString stringWithFormat:@"这里第几行:%lu",(unsigned long)i];
//    return cell;
    TYTableViewCell *cell = [TYTableViewCell uploadTYTableViewCell:tableView];
    [cell transmitWithStr:[NSString stringWithFormat:@"这里第几行:%lu",[indexPath row]]];
    return cell;
}

#pragma mark  配置SKFFPSLabel的方法
-(void)configureSKFFPSLabel{
    _SkfFPSLabel = [[SKFFPSLabel alloc]init];
    _SkfFPSLabel.frame = CGRectMake(10, 74, 50, 30);
    //    _SkfFPSLabel setb
    [self.view addSubview:_SkfFPSLabel];
    [self.view bringSubviewToFront:_SkfFPSLabel];
}
#pragma mark    开启FPS监测的方法
-(void)startTheFPSLabel{
    if (_SkfFPSLabel == nil) {
        [self configureSKFFPSLabel];
    }
}

#pragma mark    关闭FPS监测方法
-(void)closeTheFPSLabel{
    [_SkfFPSLabel SKFFPSstopDisplayLink];
    _SkfFPSLabel = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
