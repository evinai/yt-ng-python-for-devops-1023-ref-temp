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
6. Setup Continuous Integration i.e. check for issues like lint errors Create devops.yml file for Continuous integration in githubs actions

7. Build cli using Python Fire library `./cli-fire.py --help` to test logic. 
 `./cli-fire.py search_wiki "Mozart"` example cli command.
