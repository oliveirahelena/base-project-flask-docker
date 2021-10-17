# Base project to develop with python and docker

## Commands:

```bash
docker-compose up -d
```

```bash
docker cp ~/.ssh/id_rsa python_app:/home/python/.ssh/id_rsa
```

```bash
docker cp ~/.gitconfig python_app:/home/python/.gitconfig
```

```bash
sudo chmod +x ./entrypoint.sh
sudo chmod 775 ./app/src/manage.py
```
## Commands inside the container:

```bash
./manage.py create-initial-db
./manage.py flask db upgrade
./manage.py test
```
