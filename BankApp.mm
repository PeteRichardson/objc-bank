#import <iostream>

#import "Bank.h"
#import "Customer.h"

int main(int argc, char**argv) {
	Bank *bank = [[Bank alloc] initWithName: @"First Bank of Pete"];
	Customer *pete = [[Customer alloc] initWithName: @"Pete Richardson"];
	Account *peteschecking = [bank newAccountWithName: @"Pete's Checking" forCustomer: pete withBalance: 5000];

	Customer *wendy = [[Customer alloc] initWithName: @"Wendy Wilson"];
	Account *wendyssavings = [bank newAccountWithName: @"Wendy's Savings"
										forCustomer: wendy
										withBalance: 80000];

	Account *rhusridge = [bank newAccountWithName: @"Rhus Ridge Account"
								forCustomer: pete
								withBalance: 32000];

	std::cout << "Account List" << std::endl << "------------" << std::endl;
	[bank.accounts enumerateObjectsUsingBlock: ^(id obj, NSUInteger idx, BOOL *stop) {
		std::cout << [[obj name] UTF8String] << std::endl;
	}];

}
