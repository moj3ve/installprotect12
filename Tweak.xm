#import <LocalAuthentication/LocalAuthentication.h>

%hook ZBQueueViewController

-(void)confirm:(id)arg1{
	LAContext *context = [[LAContext alloc] init];  
        NSError *error = nil;  
        NSString *reason = @"Authentication Required";
 
        if ([context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {  
            [context evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics
                    localizedReason:reason
                            reply:^(BOOL success, NSError *error) {
                                if (success) {                                 
                                        dispatch_sync(dispatch_get_main_queue(), ^{
                                                %orig;
                                        });
                                   
                                }else {
				        return;
                                }
            }];
        }
}

%end

%hook ConfirmationController

-(void)confirmButtonClicked{
        LAContext *context = [[LAContext alloc] init];  
        NSError *error = nil;  
        NSString *reason = @"Authentication Required";
 
        if ([context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {  
            [context evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics
                    localizedReason:reason
                            reply:^(BOOL success, NSError *error) {
                                if (success) {                                 
                                        dispatch_sync(dispatch_get_main_queue(), ^{
                                                %orig;
                                        });

                                }else {
					return;
                                }
            }];
        }
}

%end

%hook DownloadsTableViewController

-(void)confirmQueued:(id)arg1{
        LAContext *context = [[LAContext alloc] init];  
        NSError *error = nil;  
        NSString *reason = @"Authentication Required";
 
        if ([context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {  
            [context evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics
                    localizedReason:reason
                            reply:^(BOOL success, NSError *error) {
                                if (success) {                                 
                                        dispatch_sync(dispatch_get_main_queue(), ^{
                                                %orig;
                                        });
                                   
                                }else {
					return;
                                }
            }];
        }
}

%end