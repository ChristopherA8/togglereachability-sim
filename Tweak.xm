@interface SBReachabilityManager
+(id)sharedInstance;
-(void)_toggleReachabilityMode;
@end

%hook SBVolumeControl

-(void)increaseVolume {
	%orig;
	[[%c(SBReachabilityManager) sharedInstance] _toggleReachabilityMode];
}

-(void)decreaseVolume {
	%orig;
	[[%c(SBReachabilityManager) sharedInstance] _toggleReachabilityMode];
}

%end