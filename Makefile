install:
	git pull
	helm install $(appName) . -f env-dev/$(appName).yml

upgrade:
	git pull
	helm upgrade $(appName) . -f env-dev/$(appName).yml