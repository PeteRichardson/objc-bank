SRCS =	BankApp.mm \
		Bank.mm \
		Account.mm \
		Customer.mm

OBJS = $(SRCS:.mm=.o)

CXXFLAGS += -g -O0 -x objective-c++ -arch x86_64

%.o : %.mm
	$(CXX) -c $(CFLAGS) $(CXXFLAGS) $< -o $@

BankApp: $(OBJS)
	$(CXX) -o $@ $<

clean:
	@rm -f $(OBJS)
	@rm -f BankApp

