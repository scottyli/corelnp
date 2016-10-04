#!/bin/sh

compiled_jar="corenlp.jar"
compile_folder="corenlpCompiled"

if [ -f "corenlpCompiled/corenlp.jar"]

then
	echo "exist corenlp.jar,delete it...\n"
	rm $comopile_folder/$compiled_jar
fi

ant

cd classes && jar cvf $compiled_jar edu && cd ..

if [ ! -d "./$compile_folder"]

then
	echo "miss compile_folder..\n"
	
fi


mv classes/$compiled_jar $compile_folder

echo "compile and package success..."
