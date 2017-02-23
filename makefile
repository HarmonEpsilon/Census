CXX = g++
CXXFLAGS = -c -g -std=c++11 -Wall -W -Werror -pedantic
LDFLAGS =

PROG = target/csort

$(PROG) : target/CensusSort.o target/CensusData.o target/CensusDataSorts.o
	$(CXX) $(LDFLAGS) -c target/CensusSort.o target/CensusData.o target/CensusDataSorts.o -o $(PROG)

target/CensusSort.o : src/CensusSort.cpp header/CensusData.h
	$(CXX) $(CXXFLAGS) -c src/CensusSort.cpp

target/CensusData.o : src/CensusData.cpp header/CensusData.h
	$(CXX) $(CXXFLAGS) -c src/CensusData.cpp

target/CensusDataSorts.o : src/CensusDataSorts.cpp header/CensusData.h
	$(CXX) $(CXXFLAGS) -c src/CensusDataSorts.cpp

clean :
	rm -f core $(PROG) *.o
