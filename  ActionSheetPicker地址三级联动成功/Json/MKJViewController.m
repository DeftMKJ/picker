//
//  MKJViewController.m
//  Json
//
//  Created by 宓珂璟 on 16/5/9.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import "MKJViewController.h"
#import "ViewController.h"

@interface MKJViewController ()
@property (weak, nonatomic) IBOutlet UILabel *address;
@property (nonatomic,strong) NSArray *sections; // 选择的三个index数组

@end

@implementation MKJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.sections = [[NSArray alloc] init];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click:)];
    self.address.userInteractionEnabled = YES;
    [self.address addGestureRecognizer:tap];
    
}

- (void)click:(UITapGestureRecognizer *)tap
{
    // 通过SB的mainBundle进行Push
    ViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"MKJ"];
    vc.pushAddress = self.address.text;
    vc.selections = self.sections;
    vc.myBlock = ^(NSString *address,NSArray *selections)
    {
        self.address.text = address;
        self.sections = selections;
        
    };
    [self.navigationController pushViewController:vc animated:YES];
    

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
