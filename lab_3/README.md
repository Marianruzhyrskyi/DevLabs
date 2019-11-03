## Lab_3: Вступ до моніторингу.

### Хід роботи
1. Створіив папку з назвою лабораторної роботи у власному репозиторію. Перейшовши у папку ініціалізував середовище `pipenv` та встановив необхідні пакети:
    ```bash
    pipenv --python 3.7
    pipenv install django
    ```
  - ![install django](./img/install_django.png
  
2. За допомогою Django Framework створив заготовку (template)  проекту dev_site.  Для зручності виніс всі створені файли на один рівень вище щоб структура проекту була такою як показано нижче: 
    ```bash
    pipenv run django-admin startproject dev_site
    
    mv dev_site/dev_site/* dev_site/
    mv dev_site/manage.py ./
    ```
    ```text
    lab_3/
    ├── dev_site/
    │   ├── __init__.py
    │   ├── settings.py
    │   ├── urls.py
    │   └── wsgi.py
    └── manage.py
    ```
3. Переконався що все встановилось правильно, для цього  виконав команду вказану нижче та перейшов за посиланням яке вивелось у консолі (згідно дефолтних налаштувань потрібно перейти на localhost:8000):
    ```bash
    pipenv run python manage.py runserver
    ```
  - ![django test console](./img/django_test_console.png)
  - ![django test console](./img/django_test_browser.png)
  
4. Зупинив сервер виконавши переривання `Ctrl+C`. Створив коміт із базовим темплейтом сайту. 
    > Після запуску сервера у поточні папці створився файл бези даних (`db.sqlite3`).
    > Для того щоб заборонити гіту відслідковувати цей файл та додавати його до комітів, я створив новий файл з назвою `.gitignore` та прописав в ньому назву файлу `db.sqlite3`
    > Таким чином гіт перевіряє вміст файлу `.gitignore` та виключає з комітів файли перечислені в ньому.
    
5. Cтворів темплейт додатку (app) з назвою "main". Створив коміт із новоствореними файлами темплейту додатка:
    ```bash
    pipenv run python manage.py startapp main
    ```
6. Cттворив папку `main/templates/`, а також у даній папці файл з розширенням `.html` (`main.html`). У папці `main/` створив файл `urls.py`. Зробив коміт із даними файлами;
