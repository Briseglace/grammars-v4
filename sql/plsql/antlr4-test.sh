# set -x

rm -r Generated-*

# dotnet new tool-manifest
# dotnet tool install trcaret
# dotnet tool install trclonereplace
# dotnet tool install trcombine
# dotnet tool install trconvert
# dotnet tool install trcover
# dotnet tool install trfoldlit
# dotnet tool install trgen
# dotnet tool install trgenvsc
# dotnet tool install trglob
# dotnet tool install triconv
# dotnet tool install tritext
# dotnet tool install trjson
# dotnet tool install trparse
# dotnet tool install trperf
# dotnet tool install trquery
# dotnet tool install trrename
# dotnet tool install trsort
# dotnet tool install trsplit
# dotnet tool install trsponge
# dotnet tool install trtext
# dotnet tool install trtokens
# dotnet tool install trtree
# dotnet tool install trunfold
# dotnet tool install trwdog
# dotnet tool install trxgrep
# dotnet tool install trxml
# dotnet tool install trxml2

dotnet trgen -t Java

cd Generated-Java
bash build.sh
bash test.sh
cd ..
rm -r examples/*.sql.* examples/**/*.sql.*
git restore examples/*.sql.*

cd Generated-Java-more-examples
bash build.sh
cp ../more-examples-test.sh test.sh
bash test.sh
cd ..
rm -r more-examples/*.sql.* more-examples/**/*.sql.*
git restore more-examples/*.sql.*

exit 0
