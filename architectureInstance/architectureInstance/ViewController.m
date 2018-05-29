//
//  ViewController.m
//  InheritanceHierarchy
//
//  Created by 汤义 on 2018/5/17.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "ViewController.h"
#import "TYSubclassTableViewCell.h"
#import "SKFFPSLabel.h"
#define W [UIScreen mainScreen].bounds.size.width
#define H [UIScreen mainScreen].bounds.size.height

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tabelView;
@property (nonatomic, strong) SKFFPSLabel *SkfFPSLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self initTabelView];
}

- (void)initTabelView {
    _tabelView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, W, H) style:UITableViewStylePlain];
    _tabelView.delegate = self;
    _tabelView.dataSource = self;
    [self.view addSubview:_tabelView];
}

//- (NSUInteger)numberOfRowsInSection:(NSInteger)section {
//    return 1;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return 10;
//}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    static NSString *ID = @"cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
//    }
//    NSUInteger i = [indexPath row];
//    cell.textLabel.text = [NSString stringWithFormat:@"这里是子类的第几行:%lu",(unsigned long)i];
//    return cell;
    TYSubclassTableViewCell *cell = [TYSubclassTableViewCell uploadTYTableViewCell:tableView];
    [cell transmitWithStr:[NSString stringWithFormat:@"这里是子类的第几行:%lu",(long)[indexPath row]]];
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
