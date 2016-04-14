//
//  ViewController.m
//  QQZone
//
//  Created by Kenny.li on 16/4/6.
//  Copyright (c) 2016年 KK. All rights reserved.
//

#import "ViewController.h"
#import "HMHomeVc.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *accountField;
@property (weak, nonatomic) IBOutlet UITextField *pwdField;
@property (weak, nonatomic) IBOutlet UIButton *rememberPwd;
@property (weak, nonatomic) IBOutlet UIButton *autoLogin;
- (IBAction)autoLoginBtn:(UIButton *)sender;
- (IBAction)rememberPwdBtn:(UIButton *)sender;
- (IBAction)login;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (UIStatusBarStyle)preferredStatusBarStyle{
    
    return UIStatusBarStyleLightContent;
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
}




#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    if (textField == self.accountField) {
        [self.pwdField becomeFirstResponder];
    }else{
        
        [self login];
    }
    
    return YES;
}


#pragma mark - 登陆
- (IBAction)login{
    
    HMHomeVc *homeVc = [[HMHomeVc alloc] init];
    [UIApplication sharedApplication].keyWindow.rootViewController = homeVc;
    
    
}




- (IBAction)autoLoginBtn:(UIButton *)sender {
    
    if (self.autoLogin.selected == YES) {
        self.autoLogin.selected = NO;
    }else{
        self.autoLogin.selected = YES;
            }
    
    
}

- (IBAction)rememberPwdBtn:(UIButton *)sender {
    
    
    if (self.rememberPwd.selected == YES) {
        self.rememberPwd.selected = NO;
    }else{
        self.rememberPwd.selected = YES;
    }
    
}
@end
