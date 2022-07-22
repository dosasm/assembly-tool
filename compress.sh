if [ -d build ]
then rm -rf build
fi
mkdir -p build
for dir in $(ls src)
do
    if [ -d src/$dir ]
    then 
    cd src/$dir
    7z a -tzip ../../build/$dir.jsdos .
    cd -
    fi
done