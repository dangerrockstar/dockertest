appRun:
		python3 app.py

dockerBuild:
			docker build -t flaskapp .

dockerRun:
			docker run -p 5000:5000 flaskapp

dockerClearImg:
	docker rmi -f $$(docker images -a -q)
dockerClearCon:
	docker rm -vf $$(docker ps -a -q)