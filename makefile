lab7:main.o genMino.o MinoS.o MinoI.o MinoT.o MinoL.o Mino.o
	g++ -o lab7 main.o genMino.o MinoS.o MinoI.o MinoT.o MinoL.o Mino.o
genMino.o:genMino.cpp genMino.h
	g++ -c genMino.cpp 
main.o:main.cpp genMino.h
	g++ -c main.cpp
MinoS.o:MinoS.cpp MinoS.h
	g++ -c MinoS.cpp
MinoI.o:MinoI.cpp MinoI.h
	g++ -c MinoI.cpp
MinoT.o:MinoT.cpp MinoT.h
	g++ -c MinoT.cpp
MinoL.o:MinoL.cpp MinoL.h
	g++ -c MinoL.cpp
Mino.o:Mino.cpp Mino.h
	g++ -c Mino.cpp
clean:
	rm *.o

