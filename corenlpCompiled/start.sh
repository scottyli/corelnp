#!/bin/sh

nohup java -Xmx4g -cp $compiled_jar:stanford-chinese-corenlp-2016-01-19-models.jar:stanford-corenlp-3.6.0-models.jar:ejml-0.23.jar edu.stanford.nlp.pipeline.StanfordCoreNLPServerMultiLang -props edu/stanford/nlp/pipeline/StanfordCoreNLP-chinese.properties &

echo "start success"
