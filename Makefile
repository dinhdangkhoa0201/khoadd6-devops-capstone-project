setup:
	python3 -m venv ~/.devops

install:
	echo "Installing dependencies..."
	pip install --upgrade pip
	pip install --trusted-host pypi.python.org -r requirements.txt

install-hadolint:
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.17.5/hadolint-Linux-x86_64
	chmod +x /bin/hadolint

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 app.py

run-app:
	echo "Running app"
	python3 app.py

