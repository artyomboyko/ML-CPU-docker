# Определим базовый образ
FROM ubuntu:22.04

# Обновим ОС и установим Python & Pip
USER root
RUN apt-get -qq update -y && apt-get -qq upgrade -y
RUN apt-get --qq install -y python3 python3-pip nano mc htop iotop 


# Установим необоходимые пакеты Python
COPY requirements.txt /tmp

# Создадим пользователя для запуска JyputerLab
RUN useradd -m -s /bin/bash developer
USER developer

# Создадим рабочую директорию
RUN mkdir /home/developer/workspace/
WORKDIR /home/developer/workspace/

# Публикуем порт JupyterLab
EXPOSE 8888

# Запускаем JupyterLab
ENTRYPOINT [ "jupyter-lab" ]
CMD [ "--ip", "0.0.0.0" ]