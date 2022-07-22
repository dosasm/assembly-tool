if [ -d build ]
then rm -rf build
fi
mkdir -p build
for dir in $(ls src)
do
    if [ -d src/$dir ]
    then 7z a build/$dir.jsdos src/$dir
    fi
done