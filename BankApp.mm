#import <iostream>

#import "Bank.h"

int main(int argc, char**argv) {

	Bank *bank = [[Bank alloc] initWithName: @"First Bank of Pete"];
	std::cout << "Created Bank: " << [bank.name UTF8String] << std::endl;
}