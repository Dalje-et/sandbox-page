FILE=./test.txt
if test -f "$FILE"; then
    rm ./test.txt;
else
    touch test.txt
    echo "hello world" | tee test.txt
fi

branch_name="$(git symbolic-ref HEAD 2>/dev/null)" ||
branch_name="(unnamed branch)"     # detached HEAD

branch_name=${branch_name##refs/heads/}

git add test.txt;
git commit -m "trigger CI" && git push origin $branch_name
