#!/usr/bin/env bash
###############################################################
# Автоматизированный скрипт "Управление локальными проектами"
#
# Автор: Denis Novikov <dnovikov1808@gmail.com>
# Версия: 1.0.0
###############################################################

### VARIABLES
#### bool
DEBUG=FALSE

#### string, default dir
DEFAULT_DIR_NGINX=/etc/nginx
DEFAULT_DIR_NGINX_AVAILABLE=${DEFAULT_DIR_NGINX}/sites-available/
DEFAULT_DIR_NGINX_ENABLED=${DEFAULT_DIR_NGINX}/sites-enabled/
DEFAULT_DIR_HOME=/home
DEFAULT_DIR_USER=${DEFAULT_DIR_HOME}/orange
DEFAULT_DIR_PROJECT=${DEFAULT_DIR_USER}/projects

#### string, default name
DEFAULT_NAME='deploy'

### FUNCTIONS
debug() {
    if [[ $DEBUG == TRUE ]]; then
        echo 'Пользователь ввел: ' $prompt;
        sleep 2;
    fi
}

run_menu() {
    # Отображение главного меню
    clear;
    echo 'Добро пожаловать в автоматизированный скрипт "Управление локальными проектами" // ver 1.0.0';
    echo 'Вам доступны следующие команды:';
    echo '  1) Работа с проектом';
    echo '  2) Работа с базой данных';
    echo '  0) Выход';
    echo -n 'Ваш выбор [0-2]? ';
    read prompt;

    # debug =>
    debug;
}

run_menu_project() {
    # Отображение меню "Работа с проектом"
    clear;
    echo 'Главное меню >> Работа с проектом';
    echo 'Вам доступны следующие команды:';
    echo '  1) Создать новый проект';
    echo '  2) Восстановить проект';
    echo '  3) Резервировать проект';
    echo '  4) Удалить проект';
    echo '  0) Выход';
    echo -n 'Ваш выбор [0-4]? ';
    read prompt;

    # debug =>
    debug;
}

run_menu_project_create() {
    # Отображение меню "Создать новый проект"
    clear;
    echo 'Главное меню >> Работа с проектом >> Создать новый проект';
    echo 'Для создания нового проекта, потребуется уточнить:';

    echo -n 'Введите имя проекта: ';
    read prompt;

    # debug =>
    debug;

    echo -n 'Введите имя базы данных: ';
    read prompt;

    # debug =>
    debug;
}

### RUN
run_menu
