[![Python application test with Github Actions](https://github.com/evinai/yt-noah-python-for-devops-1023/actions/workflows/devops.yml/badge.svg)](https://github.com/evinai/yt-noah-python-for-devops-1023/actions/workflows/devops.yml)

# yt-noah-python-for-devops-1023
Python for devops tutorial
## Structure for a software engineering project
1. Build scaffold for project-Devops structure
    - Makefile
    - requirements.txt
    - source
    - test
    - Dockerfile
    - IAC - Build config file

2. Create a Python Virtual Environment: 

    > `python3 -m venv ~/.venv` or `virtualenv ~/.venv`
3. Create empty files: 
    > `Makefile`,`requirements.txt`, `main.py`, `Dockerfile`, `mylib/__init__.py`
4. Populate `Makefile`
5. `pip freeze | less` to get versions paste to requirements.txt
6. Create devops.yml file for Continuous integration in githubs actions
    
    ```Makefile
    name: Python application test with Github Actions

    on: [push]

    jobs:
    build:
        runs-on: ubuntu-latest
        steps:
        - uses: actions/checkout@v2
        - name: Set up Python 3.10
        uses: actions/setup-python@v1
        with:
            python-version: 3.10
        - name: Install dependencies
        run : |
            make install
        - name: Lint with pylint
        run: |
            #make lint
        - name: Test with pytest
        run: |
            #make test
        - name: Format code
        run: |
            #make format```