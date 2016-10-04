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

cd $compile_folder

nohup java -Xmx4g -cp $compiled_jar:stanford-chinese-corenlp-2016-01-19-models.jar:stanford-corenlp-3.6.0-models.jar:ejml-0.23.jar edu.stanford.nlp.pipeline.StanfordCoreNLPServerMultiLang -props edu/stanford/nlp/pipeline/StanfordCoreNLP-chinese.properties &

echo "compile,package,start success"
