#import "Bank.h"

@implementation Bank

@synthesize name = _name;

-(id) initWithName: (NSString *) name {
	if (self = [super init]) {
		_name = name;
	}	
	return self;
}

@end