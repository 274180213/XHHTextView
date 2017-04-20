//
//  XHHTextView.h
//  Test
//
//  Created by mac on 2017/4/18.
//  Copyright © 2017年 CJH. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XHHTextView;

typedef void(^XHHTextViewHandler)(XHHTextView *textView);

@interface XHHTextView : UITextView
/*! @brief 便利构造器创建FSTextView实例.
 */
+ (instancetype)textView;

/*! @brief 设定文本改变Block回调. (切记弱化引用, 以免造成内存泄露.)
 */
- (void)addTextDidChangeHandler:(XHHTextViewHandler)eventHandler;

/*! @brief 设定达到最大长度Block回调. (切记弱化引用, 以免造成内存泄露.)
 */
- (void)addTextLengthDidMaxHandler:(XHHTextViewHandler)maxHandler;

@property (nonatomic, assign) IBInspectable NSUInteger maxLength; ///< 最大限制文本长度, 默认为无穷大(即不限制).

@property (nonatomic, assign) IBInspectable CGFloat   cornerRadius; ///< 圆角半径.
@property (nonatomic, assign) IBInspectable CGFloat   borderWidth; ///< 边框宽度.
@property (nonatomic, strong) IBInspectable UIColor  *borderColor; ///< 边框颜色.

@property (nonatomic, copy)   IBInspectable NSString *placeholder; ///< placeholder, 会自适应TextView宽高以及横竖屏切换, 字体默认和TextView一致.
@property (nonatomic, strong) IBInspectable UIColor  *placeholderColor; ///< placeholder文本颜色, 默认为#C7C7CD.
@property (nonatomic, strong) UIFont *placeholderFont; ///< placeholder文本字体, 默认为UITextView的默认字体.
@end
