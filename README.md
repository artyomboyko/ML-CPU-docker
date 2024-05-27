# ML-CPU-docker
Сборка докер контейнера для машинного обучения и анализа данных на CPU со всем необходимым ПО.

# Команда для сборки контейнера
```console
docker build -t artyomboyko/ml-cpu-docker .
```

# Комадна для запуска контейнера

```console
docker run --rm -p 9999:8888 -v .\.jupyter:/home/developer/project/.jupyter -v .\workspace\:/home/developer/workspace/ -it artyomboyko/ml-cpu
```
