# yt-noah-python-for-devops-1023
Python for devops tutorial
## Structure for a software engineering project
1- Build scaffold for project-Devops structure
    > Makefile
    > requirements.txt
    > source
    > test
    > Dockerfile
    > IAC - Build config file

2- Create a Python Virtual Environment `python3 -m venv ~/.venv` or `virtualenv ~/.venv`
3- Create empty files: `Makefile`, `requirements.txt`, `main.py`, `Dockerfile`, `mylib/__init__.py`
4- Populate `Makefile`
5- `pip freeze | less` to get versions paste to requirements.txt