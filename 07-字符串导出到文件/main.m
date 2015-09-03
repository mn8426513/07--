//
//  main.m
//  07-字符串导出到文件
//
//  Created by Mac on 14-8-29.
//  Copyright (c) 2014年 MN&WC. All rights reserved.
//

#import <Foundation/Foundation.h>

void stringExport(){
    
    NSString *str = [NSString stringWithFormat:@"1234567890"];
    NSString *path =@"/Users/Mac/Desktop/IOS开发学习/07-字符串导出到文件/abc.txt";
    
    NSError *error;
    [str writeToFile:path atomically:YES
            encoding:NSUTF8StringEncoding error:&error];
    
    
   //  将字符串写入url
   //  [str writeToURL:<#(NSURL *)#> atomically:<#(BOOL)#> encoding:<#(NSStringEncoding)#> error:<#(NSError *__autoreleasing *)#>];
    
    if(error==nil){
        NSLog(@"写入成功------%@", str);
        
    }else{
        
        NSLog(@"写入失败------%@", [error localizedDescription]);
    
    }
    
  

}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        
        stringExport();
        
        
    }
    return 0;
}
