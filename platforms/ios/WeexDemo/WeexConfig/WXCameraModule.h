//
//  WXCameraModule.h
//  WeexDemo
//
//  Created by zhanshu1 on 2017/10/9.
//  Copyright © 2017年 taobao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WeexSDK/WeexSDK.h>
@interface WXCameraModule : NSObject<WXModuleProtocol,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property(nonatomic,copy)WXModuleCallback callBack;

@property(nonatomic, strong)UIImagePickerController *camera;
@end
