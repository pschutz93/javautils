#!/bin/bash

echo "Author Commits"
git log | grep 'Author: ' |rev| cut -d " " -f 1 | rev | sort | uniq -c
echo ""
echo ""
echo "Date Commits"
git log | grep 'Date: ' | cut -d " " -f 5-6 | sort | uniq -c
echo ""
echo ""
echo "Use of Array List"
count=$(grep -Rn "ArrayList<.*>.*=" --include=*.java . | wc -l)
echo $count
if [ $count -gt 0 ]
	then grep -Rn "ArrayList<.*>.*=" --include=*.java .
fi
echo ""
echo ""
echo "Use of Hash Map"
count=$(grep -Rn "HashMap<.*,.*>.*=" --include=*.java . | wc -l)
echo $count
if [ $count -gt 0 ]
	then grep -Rn "HashMap<.*,.*>.*=" --include=*.java .
fi
echo ""
echo ""
echo "Use of Hash Set"
count=$(grep -Rn "HashSet<.*>.*=" --include=*.java . | wc -l)
echo $count
if [ $count -gt 0 ]
	then grep -Rn "HashSet<.*>.*=" --include=*.java .
fi
echo ""
echo ""
echo "Number of extensions"
count=$(grep -Rn "extends" --include=*.java . | wc -l)
echo $count
# if [ $count -gt 0 ]
# 	then  grep -Rn "extends" --include=*.java .
# fi
echo ""
echo ""
echo "Number of interfaces used"
count=$(grep -Rn "implements" --include=*.java . | wc -l)
echo $count
#if [ $count -gt 0 ]
# 	then grep -Rn "implements" --include=*.java .
# fi
echo ""
echo ""
echo "Number of interfaces"
count=$(grep -Rn "interface" --include=*.java . | wc -l) 
echo $count
# if [ $count -gt 0 ]
# 	then grep -Rn "interface" --include=*.java .
# fi
echo ""
echo ""
echo "public variables"
count=$(grep -Rn "public [^(]*$" --include=*.java . | grep -v "final" | grep -v "class" | grep -v "enum" | wc -l)
echo $count
if [ $count -gt 0 ]
	then grep -Rn "public [^(]*$" --include=*.java . | grep -v "final" | grep -v "class" | grep -v "enum"
fi
echo ""
echo ""
echo "Global variables"
count=$(grep -Rn "public [^(]*$" --include=*.java . | grep "static" | grep -v "final" | wc -l)
echo $count
if [ $count -gt 0 ]
	then grep -Rn "public [^(]*$" --include=*.java . | grep "static" | grep -v "final"
fi

echo "Chained Ifs"
count=$(pcregrep -Mrn --include="\w\.java"  "if\(.*\)(\n|.)*}(\n|\s|else)*if\(.*\)" . | grep ":[[:digit:]]" | wc -l)
echo $count
if [ $count -gt 0 ]
	then pcregrep -Mrn --include="\w\.java"  "if\(.*\)(\n|.)*}(\n|\s|else)*if\(.*\)" .
fi
echo ""
echo ""
echo "Switches"
count=$(grep -Rn "switch" --include=*.java . |  wc -l)
echo $count
if [ $count -gt 0 ]
	then grep -Rn "switch" --include=*.java .
