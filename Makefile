install:
	#install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt

post-install:
	python -m textblob.download_corpora

format:
	#format code
	black *.py mylib/*.py
lint:
	#flake8 or #pylint
	pylint --disable=R,C *.py mylib/*.py
test:
	#test
	python -m pytest -vv --cov=mylib --cov=main test_*.py
build:
	#build container
	docker build -t deploy-fastapi .

run:
	# docker
	docker run -p 127.0.0.1:8080:8080 f5c9e447e093

deploy:
	#deploy - authenticate to aws
	aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin 879166207429.dkr.ecr.eu-north-1.amazonaws.com
	docker build -t evinai-fast-api-wiki .
	docker tag evinai-fast-api-wiki:latest 879166207429.dkr.ecr.eu-north-1.amazonaws.com/evinai-fast-api-wiki:latest
	docker tag evinai-fast-api-wiki:latest 879166207429.dkr.ecr.eu-north-1.amazonaws.com/evinai-fast-api-wiki:latest


all: install post-install lint test deploy