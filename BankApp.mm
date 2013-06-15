#import <iostream>

#import "Bank.h"
#import "Customer.h"
#import "Account.h"


int main(int argc, char**argv) {
	Bank *bank = [[Bank alloc] initWithName: @"First Bank of Pete"];
	
	Customer *pete  = [[Customer alloc] initWithName: @"Pete Richardson"];
	Customer *wendy = [[Customer alloc] initWithName: @"Wendy Wilson"];

	[bank openAccountWithName: @"Pete's Checking"    forCustomer: pete  withBalance:  5000];
	[bank openAccountWithName: @"Wendy's Savings"    forCustomer: wendy withBalance: 80000];
	[bank openAccountWithName: @"Rhus Ridge Account" forCustomer: pete  withBalance: 32000];

	std::cout << [[bank description] UTF8String] << std::endl;

	AccountIdType myId = 1000;
	Account *acct = [bank getAccountById: myId];
	if (!acct) {
		std::cout << "ERROR: couldn't get find account with id " << myId << std::endl;
		exit(1);
	} else {
		std::cout << "Here's the balance of account with id " << myId << ": $" << [acct balance] << std::endl;
	}

}
