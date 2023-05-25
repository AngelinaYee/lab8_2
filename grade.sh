CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

set -e
files=`find list-methods-lab3`
for file in $files
do
if [[ -f $file ]] && [[ $file == *ListExamples* ]]
then
wc -l $file
fi
done



# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
set -e;
javac Server.java
javac GradeServer.java
