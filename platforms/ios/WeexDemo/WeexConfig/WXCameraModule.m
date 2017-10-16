//
//  WXCameraModule.m
//  WeexDemo
//
//  Created by zhanshu1 on 2017/10/9.
//  Copyright © 2017年 taobao. All rights reserved.
//

#import "WXCameraModule.h"

@implementation WXCameraModule
@synthesize weexInstance;
WX_EXPORT_METHOD(@selector(takePhoto:callback:))
- (void)takePhoto:(NSDictionary *)param callback:(WXModuleCallback)callback
{
    self.callBack = callback;
    self.camera = [[UIImagePickerController alloc] init];
    if([[param objectForKey:@"type"] isEqualToString:@"photoAlbum"])
    {
        self.camera.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    }
    else if([[param objectForKey:@"type"] isEqualToString:@"camera"])
        
    {
        self.camera.sourceType = UIImagePickerControllerSourceTypeCamera;
    }
    else
        
    {
        self.callBack(@{@"status":@"参数错误"});
        return;
    }
    
    self.camera.allowsEditing = NO;
    self.camera.delegate=self;
     [[weexInstance.viewController navigationController] presentViewController:self.camera animated:YES completion:nil];
    
    
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [[weexInstance.viewController navigationController] dismissViewControllerAnimated:YES completion:nil];
    
    self.callBack(@{@"status":@"cancel"});
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
     //UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
      [[weexInstance.viewController navigationController] dismissViewControllerAnimated:YES completion:nil];
    self.callBack(@{@"status":@"success"});
    
}
@end
