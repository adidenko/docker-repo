docker-repo
===========

Fuel docker repo container

```bash
# build at any stage
docker build -t fuel/repo docker-repo

# run AFTER "storage-repo"
docker run \
  -p 8080:8080 \
  --volumes-from storage-repo \
  -d -t \
  fuel/repo

```

