## Command
```
docker build -t dumprx .
```
### Run
- The first mount is used to inputfile, the second mout is folder output

```
podman run -v "$(pwd)":/tmp/ -v "$(pwd)/out":/home/DumprX/out dumprx:0.2 ./dumper.sh <inputfile>
```