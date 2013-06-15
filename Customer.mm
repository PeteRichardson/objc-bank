#import "Customer.h"

@implementation Customer

@synthesize name = _name;

-(id) initWithName: (NSString *) name {
	if (self = [super init]) {
		_name = name;
		NSLog(@"Created Customer: %@", _name);
	}	
	return self;
}

@end
