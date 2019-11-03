## Lab_2: Автоматизація. Знайомство з CI/CD.

### Хід роботи
1. Створив папку lab_2 з _README.md_ файлом.

2. За допомогою пакетного менеджера *PIP* інсталював `pipenv` та створив ізольоване середовище для Python. Ознайомився з командаю `pipenv -h`. Команди:i
```bash
pip install pipenv
pipenv --python 3.7
pipenv shell
```
  - ![pipenv_install](./img/pipenv_1.png) ![pipenv_install](./img/pipenv_2.png) 
    
3. Встановив бібліотеи  `requests`  та `ntplib`  у своєму середовищі. 
```bash
pipenv install requests
pipenv install ntplib
```
  - ![install libs](./img/pipenv_libs.png)

4. Створив файл `app.py`. Ознайомився з Python: [Python tutorial](https://www.tutorialspoint.com/python/index.htm)

5. Переконайтесь що програма працює правильно.
```bash
pipenv python app.py
```
  - ![test app.py](./img/app_py_test.png)
    

6. Встановив бібліотеку `pytest`. Ознайомився з  [документацією pytest](https://docs.pytest.org/en/latest/#).
```bash
pipenv install pytest
```
  - ![pytest install](./img/pytest_install.png)
    

7.  Тести виконуються успішно::
```bash
pipenv pytest tests/tests.py
```
  -  ![pytest install](./img/run_pytests_test.png)
    

8. :exclamation: (Захист) У програмі дописати функцію яка буде перевіряти час доби AM/PM та відповідно друкувати: Доброго дня/ночі;
  -  ![pytest install](./img/home_work.png)

9. :exclamation: (Захист) Написав тест що  перевіряє правильність виконання функції в app.py. Тест виконується успішно

10. Перенаправив результат виконання тестів у файл `results.txt` командою `pipenv run pytest tests/tests.py > results.txt` та результат виконання програми у кінець цього ж файлу командою `pipenv run python app.py >> results.txt`. 

11. Зробив  коміт зі змінами до репозиторію.

12. Заповніть `Makefile` необхідними командами (bash) для повної автоматизації процесу СІ  проекту.

13. Закомітьтив зміни в `Makefile` до репозиторію.

14. Склонуйте git репозиторій на чисту віртуальну машину. Перейшов  у папку лабораторної роботи та запустив make:
```bash
make
```
- 
15. Зроблено
