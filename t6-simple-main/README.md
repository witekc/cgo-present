Notes:
- http/net package introduces dependencies (most go packages are static)


go build -x -o main .

show dependencies:
objdump -p main | grep NEEDED
OR
ldd main
OR
readelf -d main
