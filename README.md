# pdc-agent

## Pour construire
```
export DOCKER_BUILDKIT=0
docker build --no-cache --tag sylvaintruchon/pdc-agent .
```

## Pour entrer dans une image lorsqu'il y a un bug de construction
```
docker run --rm -ti 20bb25d32758 /bin/bash
docker run --rm -ti c67fac2e1dab /bin/sh
```

## Pour ajouter un tag à une image
```
docker tag 0165d6b2cde3 sylvaintruchon/pdc-agent
```

## Pour pousser dans un registre de container
```
docker login -u sylvaintruchon
docker push sylvaintruchon/pdc-agent
```
