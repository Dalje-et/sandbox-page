FILE=./test.txt
if test -f "$FILE"; then
    rm ./test.txt;
else
    touch test.txt
    echo "hello world" | tee test.txt
fi

git add test.txt;
git commit -m "trigger CI" && git push origin main
