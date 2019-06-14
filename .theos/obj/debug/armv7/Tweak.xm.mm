#line 1 "Tweak.xm"
#import <LocalAuthentication/LocalAuthentication.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class DownloadsTableViewController; @class ZBQueueViewController; @class ConfirmationController; 
static void (*_logos_orig$_ungrouped$ZBQueueViewController$confirm$)(_LOGOS_SELF_TYPE_NORMAL ZBQueueViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$ZBQueueViewController$confirm$(_LOGOS_SELF_TYPE_NORMAL ZBQueueViewController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$ConfirmationController$confirmButtonClicked)(_LOGOS_SELF_TYPE_NORMAL ConfirmationController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$ConfirmationController$confirmButtonClicked(_LOGOS_SELF_TYPE_NORMAL ConfirmationController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$DownloadsTableViewController$confirmQueued$)(_LOGOS_SELF_TYPE_NORMAL DownloadsTableViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$DownloadsTableViewController$confirmQueued$(_LOGOS_SELF_TYPE_NORMAL DownloadsTableViewController* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"


static void _logos_method$_ungrouped$ZBQueueViewController$confirm$(_LOGOS_SELF_TYPE_NORMAL ZBQueueViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
	LAContext *context = [[LAContext alloc] init];  
        NSError *error = nil;  
        NSString *reason = @"Authentication Required";
 
        if ([context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {  
            [context evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics
                    localizedReason:reason
                            reply:^(BOOL success, NSError *error) {
                                if (success) {                                 
                                        dispatch_sync(dispatch_get_main_queue(), ^{
                                                _logos_orig$_ungrouped$ZBQueueViewController$confirm$(self, _cmd, arg1);
                                        });
                                   
                                }else {
				        return;
                                }
            }];
        }
}





static void _logos_method$_ungrouped$ConfirmationController$confirmButtonClicked(_LOGOS_SELF_TYPE_NORMAL ConfirmationController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
        LAContext *context = [[LAContext alloc] init];  
        NSError *error = nil;  
        NSString *reason = @"Authentication Required";
 
        if ([context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {  
            [context evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics
                    localizedReason:reason
                            reply:^(BOOL success, NSError *error) {
                                if (success) {                                 
                                        dispatch_sync(dispatch_get_main_queue(), ^{
                                                _logos_orig$_ungrouped$ConfirmationController$confirmButtonClicked(self, _cmd);
                                        });

                                }else {
					return;
                                }
            }];
        }
}





static void _logos_method$_ungrouped$DownloadsTableViewController$confirmQueued$(_LOGOS_SELF_TYPE_NORMAL DownloadsTableViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
        LAContext *context = [[LAContext alloc] init];  
        NSError *error = nil;  
        NSString *reason = @"Authentication Required";
 
        if ([context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {  
            [context evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics
                    localizedReason:reason
                            reply:^(BOOL success, NSError *error) {
                                if (success) {                                 
                                        dispatch_sync(dispatch_get_main_queue(), ^{
                                                _logos_orig$_ungrouped$DownloadsTableViewController$confirmQueued$(self, _cmd, arg1);
                                        });
                                   
                                }else {
					return;
                                }
            }];
        }
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$ZBQueueViewController = objc_getClass("ZBQueueViewController"); MSHookMessageEx(_logos_class$_ungrouped$ZBQueueViewController, @selector(confirm:), (IMP)&_logos_method$_ungrouped$ZBQueueViewController$confirm$, (IMP*)&_logos_orig$_ungrouped$ZBQueueViewController$confirm$);Class _logos_class$_ungrouped$ConfirmationController = objc_getClass("ConfirmationController"); MSHookMessageEx(_logos_class$_ungrouped$ConfirmationController, @selector(confirmButtonClicked), (IMP)&_logos_method$_ungrouped$ConfirmationController$confirmButtonClicked, (IMP*)&_logos_orig$_ungrouped$ConfirmationController$confirmButtonClicked);Class _logos_class$_ungrouped$DownloadsTableViewController = objc_getClass("DownloadsTableViewController"); MSHookMessageEx(_logos_class$_ungrouped$DownloadsTableViewController, @selector(confirmQueued:), (IMP)&_logos_method$_ungrouped$DownloadsTableViewController$confirmQueued$, (IMP*)&_logos_orig$_ungrouped$DownloadsTableViewController$confirmQueued$);} }
#line 77 "Tweak.xm"
