#!/bin/sh

build() {
    if [ ! -d build ]
    then
      mkdir build
    fi

    for post in posts/*
    do
        POST_FILE=$(basename $post)
        POST_NAME=$(basename $post .txt)

        index="$index<a href=\"$POST_FILE\">$POST_NAME</a><br />"

        cat $post > "build/$POST_FILE"
    done

    HEADER='<!DOCTYPE html><html><head><meta charset="utf-8" /></head><body>'
    FOOTER="</body></html>"

    echo "$HEADER $index $FOOTER" > "build/index.html"
}

deploy() {
    rm -rf build
    mkdir build
    git worktree prune
    rm -rf .git/worktrees/build

    git worktree add -B gh-pages build origin/gh-pages

    rm -rf build/*
    build
    cd build

    git add -A
    git commit -m "$(date)"
    git push --all
}

case $1 in
    build)  build;;
    deploy) deploy;;
    *)      echo "Available options: build, deploy"
esac
