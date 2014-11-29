static BOOL boldEnable(void) {
    NSNumber *boldEnable = (NSNumber *)[[NSUserDefaults standardUserDefaults] objectForKey:@"boldEnable" inDomain: @"com.broganminer.unbold"];
    return (boldEnable)? [boldEnable boolValue]:YES;
}
%hook UIStatusBarTimeItemView
- (int)textStyle{
    if (boldEnable()){
      return nil;
    }
    else {
      return %orig;
    }
}
%end