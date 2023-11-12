setup:
	python3 -m venv ~/.devops

install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt
	sudo apt-get install shellcheck -y
	wget https://github.com/hadolint/hadolint/releases/download/v2.12.0/hadolint-Linux-x86_64
	sudo mv hadolint-Linux-x86_64 /usr/local/bin/hadolint
	sudo +x /lusr/local/bin/hadolint

test:
	#

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py

all: install lint test