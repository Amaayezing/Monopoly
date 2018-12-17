hoarding.out: main.o Board.o GameState.o Move.o Player.o Property.o Rules.o Space.o MonopolyUtility.o PropertySet.o PropertyManager.o Go.o DiceRoller.o CSVReader.o
	gcc -g -Wall -Werror -o hoarding.out main.o Board.o GameState.o Move.o Player.o Property.o Rules.o Space.o MonopolyUtility.o PropertySet.o PropertyManager.o Go.o DiceRoller.o CSVReader.o

main.o: main.cpp GameState.h
	gcc -g -Wall -Werror -c -o main.o main.cpp

Board.o: Board.cpp Board.h MonopolyUtility.h Player.h
	gcc -g -Wall -Werror -c -o Board.o Board.cpp

GameState.o: GameState.cpp GameState.h MonopolyUtility.h Move.h PropertyManager.h
	gcc -g -Wall -Werror -c -o GameState.o GameState.cpp

Move.o: Move.cpp Move.h
	gcc -g -Wall -Werror -c -o Move.o Move.cpp

Player.o: Player.cpp Player.h
	gcc -g -Wall -Werror -c -o Player.o Player.cpp

Property.o: Property.cpp Property.h Player.h
	gcc -g -Wall -Werror -c -o Property.o Property.cpp

Rules.o: Rules.cpp Rules.h
	gcc -g -Wall -Werror -c -o Rules.o Rules.cpp

Space.o: Space.cpp Space.h MonopolyUtility.h Player.h GameState.h
	gcc -g -Wall -Werror -c -o Space.o Space.cpp

MonopolyUtility.o: MonopolyUtility.cpp MonopolyUtility.h
	gcc -g -Wall -Werror -c -o MonopolyUtility.o MonopolyUtility.cpp

PropertySet.o: PropertySet.cpp PropertySet.h
	gcc -g -Wall -Werror -c -o PropertySet.o PropertySet.cpp

PropertyManager.o: PropertyManager.cpp PropertyManager.h Board.h Player.h
	gcc -g -Wall -Werror -c -o PropertyManager.o PropertyManager.cpp

Go.o: Go.cpp Go.h
	gcc -g -Wall -Werror -c -o Go.o Go.cpp

DiceRoller.o: DiceRoller.cpp DiceRoller.h MonopolyUtility.h
	gcc -g -Wall -Werror -c -o DiceRoller.o DiceRoller.cpp

CSVReader.o: CSVReader.cpp CSVReader.h
	gcc -g -Wall -Werror -c -o CSVReader.o CSVReader.cpp

clean:
	rm -f *.o *.out