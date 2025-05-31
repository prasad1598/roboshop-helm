install:
	git pull
	helm install $(appName) . -f env-dev/$(appName).yml

upgrade:
	git pull
	helm upgrade $(appName) . -f env-dev/$(appName).yml

app:
	make upgrade appName=frontend
	make upgrade appName=cart
	make upgrade appName=user
	make upgrade appName=shipping
	make upgrade appName=catalogue
	make upgrade appName=payment