#import <iostream>

#import "Bank.h"
#import "Customer.h"

int main(int argc, char**argv) {
	Bank *bank = [[Bank alloc] initWithName: @"First Bank of Pete"];
	Customer *pete = [[Customer alloc] initWithName: @"Pete Richardson"];
	Account *peteschecking = [bank newAccountWithName: @"Pete's Checking" forCustomer: pete withBalance: 5000];
}
