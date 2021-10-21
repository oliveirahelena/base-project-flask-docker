# Base project to develop with python and docker

## Commands outside the container:

```bash
pipenv install black --pre --dev
```

## Commands inside the container:

```bash
./manage.py create-initial-db
./manage.py flask db upgrade
./manage.py test
```
