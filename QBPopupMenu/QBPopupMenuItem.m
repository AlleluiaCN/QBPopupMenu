//
//  QBPopupMenuItem.m
//  QBPopupMenu
//
//  Created by Tanaka Katsuma on 2013/11/22.
//  Copyright (c) 2013年 Katsuma Tanaka. All rights reserved.
//

#import "QBPopupMenuItem.h"

@interface QBPopupMenuItem ()

@property (nonatomic, weak, readwrite) id target;
@property (nonatomic, assign, readwrite) SEL action;

@property (nonatomic, assign, readwrite) NSInteger flag;
@property (nonatomic, copy, readwrite) NSString *title;
@property (nonatomic, copy, readwrite) UIImage *image;

@end

@implementation QBPopupMenuItem

+ (instancetype)itemWithTitle:(NSString *)title target:(id)target flag:(NSInteger)flag action:(SEL)action
{
    return [[self alloc] initWithTitle:title target:target flag:flag action:action];
}

+ (instancetype)itemWithImage:(UIImage *)image target:(id)target flag:(NSInteger)flag action:(SEL)action
{
    return [[self alloc] initWithImage:image target:target flag:flag action:action];
}

+ (instancetype)itemWithTitle:(NSString *)title image:(UIImage *)image target:(id)target flag:(NSInteger)flag action:(SEL)action
{
    return [[self alloc] initWithTitle:title image:image target:target flag:flag action:action];
}

- (instancetype)initWithTitle:(NSString *)title target:(id)target flag:(NSInteger)flag action:(SEL)action
{
    return [self initWithTitle:title image:nil target:target flag:flag action:action];
}

- (instancetype)initWithImage:(UIImage *)image target:(id)target flag:(NSInteger)flag action:(SEL)action
{
    return [self initWithTitle:nil image:image target:target flag:flag action:action];
}

- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image target:(id)target flag:(NSInteger)flag action:(SEL)action
{
    self = [super init];
    
    if (self) {
        self.target = target;
        self.action = action;
        
        self.title = title;
        self.image = image;
        
        self.flag = flag;
    }
    
    return self;
}

@end
