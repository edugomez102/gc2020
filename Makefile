All: CarGL.exe

main.o: main.o
	mingw32-g++.exe -g  -c main.cpp -o obj\Debug\main.o
Objects.o: Objects.cpp
	mingw32-g++.exe -g  -c Objects.cpp -o obj\Debug\Objects.o
Program.o: Program.cpp
	mingw32-g++.exe -g  -c Program.cpp -o obj\Debug\Program.o
Shader.o: Shader.cpp
	mingw32-g++.exe -g  -c Shader.cpp -o obj\Debug\Shader.o

CarGL.exe: main.o Objects.o Program.o Shader.o
	mingw32-g++.exe  -o bin\Debug\CarGL.exe obj\Debug\main.o obj\Debug\Objects.o obj\Debug\Program.o obj\Debug\Shader.o   "C:\Program Files (x86)\CodeBlocks\MinGW\lib\glew32s.lib" "C:\Program Files (x86)\CodeBlocks\MinGW\lib\glew32.lib" "C:\Program Files (x86)\CodeBlocks\MinGW\lib\libglui32.a" "C:\Program Files (x86)\CodeBlocks\MinGW\lib\glut32.lib" "C:\Program Files (x86)\CodeBlocks\MinGW\lib\libglu32.a" "C:\Program Files (x86)\CodeBlocks\MinGW\lib\libopengl32.a"

