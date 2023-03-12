CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'
FIRSTREPOS='https://github.com/ucsd-cse15l-w23/skill-demo1-server'
SECONDREPOS='https://github.com/ucsd-cse15l-w23/skill-demo1-data'

git clone $FIRSTREPOS

cd skill-demo1-server

javac -cp $CPATH *.java
java -cp $CPATH org.junit.runner.JUnitCore FileServerTests

cd

git clone $SECONDREPOS

cd skill-demo1-data

find written_2/ > find-results.txt

grep ".txt" find-results.txt > grep-results.txt

wc grep-results.txt
