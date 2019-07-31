#import "EasytbkStringUtil.h"

@implementation EasytbkStringUtil

+ (BOOL) isBlank:(NSString *)string {

    if (string == nil) {
        return YES;
    }


    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    return [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0;

}

+ (NSString *)nilToEmpty:(NSString *)string {
    return string == nil?@"":string;
}
@end